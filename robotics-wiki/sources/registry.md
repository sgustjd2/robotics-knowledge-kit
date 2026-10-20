# 출처 등록부

확인 날짜: 2026-10-21. 버전과 기능은 계속 변하므로 변경 전 원문을 다시 확인한다.

| 출처 | 유형/분야 | 현재 확인한 내용 | 신뢰·갱신 메모 |
|---|---|---|---|
| [KANT Physical AI 커리큘럼](https://kant.spartaclub.kr/ai-physical) | 교육과정 / 전체 | 1–5주 기초(Python, ROS 2, 좌표, OpenCV/LLM), 6–9주 제어·3D vision, 10–15주 자율주행·로봇 AI, 16–19주 다중 로봇·공정, 20–29주 Digital Twin·Sim-to-Real, 프로젝트 | 교육기관 1차 자료. 페이지에 교육 운영 정보도 함께 있어 교육 내용과 홍보성 주장을 구분 |
| [PinkLAB MuJoCo + ROS 2 워크숍](https://pinklab.art/academy/mujoco-ros2-workshop-1/) | 교육과정 / 실습 | ROS 2 Jazzy·Ubuntu 24.04, MuJoCo bridge, TF·센서, SLAM/Nav2, MoveIt 2·ArUco, LLM 작업 계획 통합 | 실습 과정의 구성 참고. 특정 강좌 방식이 범용 표준을 뜻하지 않음 |
| [ROS 2 문서](https://docs.ros.org/) | 공식 문서 / ROS 2 | 배포판별 문서 진입점 | 공식. 설치 전 배포판/EOL 상태 점검 |
| [ros2_control Rolling](https://control.ros.org/rolling/doc/ros2_control/doc/index.html) | 공식 문서 / 제어 | controller manager와 hardware interface 계층 | Rolling 문서는 변동 가능. 배포판별 문서로 대조 |
| [Nav2 upstream](https://github.com/ros-navigation/navigation2) | GitHub / 주행 | 문서, 설치, 지원 배포판, 튜토리얼을 upstream에서 제공 | release와 distro matrix를 주간 추적 |
| [MoveIt 2 upstream](https://github.com/moveit/moveit2) | GitHub / 조작 | 안정 브랜치와 ROS 배포판별 빌드 정보 | upstream. 설치 시 공식 binary matrix 재확인 |
| [OpenCV 5.0 docs](https://docs.opencv.org/5.0/) · [releases](https://opencv.org/releases/) | 공식 / 비전 | 릴리스 아카이브 검색 결과에 OpenCV 5.0.0 및 4.14.0 표시 | 최근 릴리스 숫자는 게시일/패키지 상태 포함해 재확인 |
| [MuJoCo docs](https://mujoco.readthedocs.io/en/stable/) | 공식 / 시뮬레이션 | simulation programming/API 문서 | stable 문서는 시간이 지나면 바뀜 |
| [Gazebo Harmonic ROS integration](https://gazebosim.org/docs/harmonic/ros2_integration/) | 공식 / 시뮬레이션 | ROS 2 연동 튜토리얼 | 설치 조합은 [Gazebo 설치 표](https://gazebosim.org/docs/latest/ros_installation/) 확인 |
| [NVIDIA Isaac Sim learning](https://docs.nvidia.com/learning/physical-ai/getting-started-with-isaac-sim/latest/index.html) | 공식 / 시뮬레이션 | URDF, ROS 2, 합성 데이터, SIL/HIL 학습 모듈 | GPU/드라이버 요구사항도 확인 |
| [OpenUSD cheatsheet](https://docs.nvidia.com/learn-openusd/latest/openusd-cheatsheet.html) | 공식 교육 인덱스 / 디지털 트윈 | 학습·검증·최적화 자료의 입구 | 벤더별 범위를 태그로 구분 |
| [LeRobot docs](https://huggingface.co/docs/lerobot) · [GitHub](https://github.com/huggingface/lerobot) | 공식/Upstream / robot learning | 데이터셋, imitation/RL, policies, 시뮬레이션/하드웨어 문서가 제공됨 | 빠른 개발 프로젝트. 버전별 호환과 라이선스 확인 |
| [Hugging Face LeRobot Hub](https://huggingface.co/lerobot) | Hub / 모델·데이터·앱 | 최근 게시된 모델·Space를 발견할 수 있음 | 업로드 주체의 model/dataset card와 license 검증 필요 |

## 평가용 리포지토리 체크

- 최신 릴리스·태그와 last commit
- README의 ROS/Ubuntu/Python/CUDA/하드웨어 지원 버전
- CI 상태, issue/PR 관리, 설치 가능한 패키지
- LICENSE와 모델·데이터셋 별도 조건
- 문서에서 실제 실행/재현 단계 제공 여부
- 제안된 기술이 로봇 안전·실시간 경로를 직접 통제하는지 여부
