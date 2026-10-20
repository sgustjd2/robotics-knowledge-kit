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

## 기준 링크

- [MuJoCo 문서](https://mujoco.readthedocs.io/en/stable/)
- [Gazebo Harmonic ROS 2 통합](https://gazebosim.org/docs/harmonic/ros2_integration/)
- [Gazebo와 ROS 배포판 설치 조합](https://gazebosim.org/docs/latest/ros_installation/)
- [Isaac Sim 시작 학습](https://docs.nvidia.com/learning/physical-ai/getting-started-with-isaac-sim/latest/index.html)
- [OpenUSD 학습·검증 인덱스](https://docs.nvidia.com/learn-openusd/latest/openusd-cheatsheet.html)
- [디지털 트윈 Physical AI 학습 경로](https://www.nvidia.com/en-us/learn/learning-path/digital-twins.md/)
