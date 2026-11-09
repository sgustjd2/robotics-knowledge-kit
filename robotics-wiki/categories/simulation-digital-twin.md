# 시뮬레이션과 디지털 트윈

## 도구 선택

| 도구 | 강점/적합한 작업 | 확인할 점 |
|---|---|---|
| MuJoCo | 빠른 rigid-body/control/robot-learning 실험, MJCF 기반 모델 | ROS 2 연결과 asset format 변환은 선택한 bridge의 유지보수 상태로 검증 |
| Gazebo Sim | ROS 2 생태계, 센서·플러그인 통합, 일반 로봇 시뮬레이션 | ROS 배포판과 Gazebo 배포판의 공식 호환 조합 확인 |
| NVIDIA Isaac Sim/Lab | GPU 가속, 합성 데이터, 대규모 환경·학습 워크플로 | GPU/드라이버/버전 요구사항 및 라이선스/배포 조건 확인 |
| Blender/CAD | 메쉬 제작·정리·시각화, 물리 simulator용 자산 전처리 | CAD 형상만으로 관성/충돌/관절 모델을 자동 완성할 수 있다고 가정하지 않음 |
| OpenUSD/Omniverse | 복합 장면, 자산 조합, 디지털 트윈 워크플로 | USD 자산 변환 과정에서 scale, frame, material, physics metadata 검증 |

## 적용 순서

1. ROS 2 패키지 테스트가 목적이면 Gazebo 또는 MuJoCo 중 팀의 ROS 통합이 안정적인 도구를 우선 선정한다.
2. 데이터 생성/렌더링 규모가 크면 Isaac Sim/Lab을 평가한다.
3. CAD, URDF, MJCF, USD 사이 변환은 최소 샘플 로봇으로 joint axis, origin, unit, inertia, collision geometry를 비교한다.
4. sim-to-real은 센서 노이즈·마찰·질량·지연·조명 변화를 명시적으로 모델링하고 실제 실험으로 차이를 측정한다.

## OpenUSD 자산을 시뮬레이션에 쓰기

[SimReady Central](https://huggingface.co/blog/nvidia/simready-central-assets-robotics-ai-factories)은 2026-10-21 발표된 OpenUSD simulation-ready 자산 검색/공유 라이브러리다. 로봇팔·그리퍼·작업장 자산을 조립할 때는 CAD 형상만 보는 대신 목표 작업 프로파일에 맞는 충돌 형상, 질량/마찰, 관절·한계, semantic label, 재질/센서 속성과 검증 근거를 확인한다. [SimReady Central HF 데이터 페이지](https://huggingface.co/datasets/nvidia/simready-central-library)는 현재 Alpha라고 표시하며 파일 접근 전 Hugging Face 계정 정보 제공 동의가 필요하다. 블로그의 “ungated” 소개만으로 현재 데이터 파일 접근이나 사용권을 가정하지 않는다. 각 기여자의 저장소, 버전, 개별 license, 프로파일과 런타임 호환성을 사용 전에 확인한다.

시뮬레이터 시간 또는 월드 reset은 단순한 `/clock` 후퇴 문제가 아니다. controller 적분기/trajectory 내부 상태와 simulator의 관절 상태를 함께 복구할 수 있어야 한다. [ros2_control upstream의 reset semantics 논의](https://github.com/ros-controls/ros2_control/issues/3715)는 2026-10-22 현재 open design issue이며 확정 API/보장 사항이 아니다. 대상 simulator integration의 reset callback·상태 복원 동작을 따로 검증하고, 검증 전에는 컨트롤러 재시작/초기화 절차를 정한다.

[Mundo](https://mundo-world-model.github.io/)는 2026-10-23 공개된 연구 프리뷰로, 사진/영상에서 얻은 3D proxy·scene program·MuJoCo 물리 실행과 비디오 생성 모델을 결합해 장소별 Real-to-Sim 장면을 보여준다. 저자 프로젝트 페이지와 [GitHub README](https://github.com/Luo-Yihang/Mundo)는 code/weights 공개를 11월 말로 예정한다고 표시해 현재 공개된 repo만으로 재현 가능한 도구라고 취급하지 않는다. 발표 자료는 재구성 시간, 작은 물체 상호작용의 환각, 긴 시간의 일관성 한계를 명시한다. 따라서 시뮬레이션 boundary/표현 설계를 살펴볼 연구 사례로 분류하며, 합성 영상이나 그럴듯한 결과를 기하·물리 정확도/실기 검증의 증거로 쓰지 않는다.

## Isaac Lab 3.0 마이그레이션

[Isaac Lab 3.0.0](https://github.com/isaac-sim/IsaacLab/releases/tag/v3.0.0)은 2026-10-20 공개된 GA이며, 10-22 공식 공지가 이를 확인한다. 단일 task API에서 Newton(MuJoCo-Warp 포함), OVPhysX/OVRTX, Isaac Sim backend를 선택하는 구조다. 릴리스가 제시한 기준 조합은 Isaac Sim 6.2, Python 3.12, PyTorch 2.11/CUDA 13, Warp 1.17, Newton 1.6.1, RSL-RL 5.5.1이다. Isaac Sim이 필요한 ROS bridge, XR, Kit 기능은 별도 사용 경로이며 지원 backend 조합은 task별로 확인한다.

3.0은 단순 minor upgrade가 아니다. quaternion 순서가 WXYZ에서 XYZW로 바뀌고, asset/sensor `.data.*`는 명시적 `.torch` 또는 `.warp` 접근을 위한 `ProxyArray`가 되며, 쓰기 API는 index/mask 경로를 분리한다. 2.x 환경을 그대로 upgrade하지 말고 새 Python 3.12 환경에서 공식 migration 문서에 따라 pose·reset·controller 목표·관측 코드와 backend별 task를 검증한다. Isaac Lab framework는 BSD-3-Clause이며, 의존성·asset 및 Isaac Sim 사용 조건은 별도로 확인한다.

## MuJoCo 4.0

[MuJoCo 4.0.0](https://github.com/google-deepmind/mujoco/releases/tag/4.0.0)은 2026-11-06 공개됐다. upstream은 Studio/Filament viewer·SDK, implicit deformables, speculative contacts와 `mujoco-core`+optional component 패키지 구조를 소개한다. Python 3.10 지원 중단 및 일부 soft-body API 제거/대체가 있으므로 [4.0 발표·migration 안내](https://github.com/google-deepmind/mujoco/discussions/3773)를 확인하고 기존 MJCF·plugin·bridge를 고정 버전에서 비교한다. 소스는 Apache-2.0; 문서와 모델 자산 조건은 별도 확인한다. 이 release는 물리 정확도 또는 실기 sim-to-real 성공의 보증이 아니다.

## 기준 링크

- [MuJoCo 문서](https://mujoco.readthedocs.io/en/stable/)
- [MuJoCo upstream releases](https://github.com/google-deepmind/mujoco/releases): 현재 버전은 이력에서 확인하고 API/model 변경을 regression test로 검증
- [Gazebo Harmonic ROS 2 통합](https://gazebosim.org/docs/harmonic/ros2_integration/)
- [Gazebo와 ROS 배포판 설치 조합](https://gazebosim.org/docs/latest/ros_installation/)
- [Isaac Sim 시작 학습](https://docs.nvidia.com/learning/physical-ai/getting-started-with-isaac-sim/latest/index.html)
- [Isaac Lab releases](https://github.com/isaac-sim/IsaacLab/releases) · [3.0 license/설치 문서](https://isaac-sim.github.io/IsaacLab/main/source/refs/license.html): Isaac Lab과 Isaac Sim 버전/기능/license 경계를 각각 확인
- [OpenUSD 학습·검증 인덱스](https://docs.nvidia.com/learn-openusd/latest/openusd-cheatsheet.html)
- [디지털 트윈 Physical AI 학습 경로](https://www.nvidia.com/en-us/learn/learning-path/digital-twins.md/)
- [SimReady Foundation 검증 요구사항](https://github.com/NVIDIA/SimReady)
- [SimReady Central 자산 라이브러리](https://huggingface.co/datasets/nvidia/simready-central-library)
