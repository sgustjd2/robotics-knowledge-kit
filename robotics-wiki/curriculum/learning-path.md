# 권장 학습 경로

직무 범위를 넓게 익히되, 각 단계의 결과물은 다음 단계에서 재사용할 수 있게 만든다.

| 단계 | 주제 | 실습 결과 |
|---|---|---|
| 1. 개발 기본기 | Ubuntu, Python/C++, Git/GitHub, 빌드·디버깅, 임베디드/Edge 개요 | 재현 가능한 개발환경과 코드 리뷰 가능한 패키지 |
| 2. 로봇 기초 | 벡터·행렬, 회전/쿼터니언, 좌표계, URDF/Xacro, TF | RViz2에서 모델·TF·관절 상태 확인 |
| 3. ROS 2와 제어 | 노드, topic/service/action, QoS, launch, rosbag, ros2_control | 센서 입력→제어 출력 노드 및 재생 가능한 bag |
| 4. 비전·센서 | OpenCV, 카메라 모델/보정, PnP, 깊이·LiDAR·IMU, 시간 동기화 | 보정된 센서로 물체/마커 pose 추정 후 ROS 메시지 발행 |
| 5. 주행·조작 | SLAM/AMCL, Nav2, MoveIt 2, 충돌 모델, 행동 트리 | 시뮬레이터에서 목표 주행 후 pick-and-place |
| 6. 시뮬레이션·트윈 | MuJoCo 또는 Gazebo부터 시작, 필요하면 Isaac Sim/Lab·OpenUSD 확장; CAD→URDF/USD 자산 흐름 | 반복 가능한 월드, 센서, 물리 검증과 시각화 |
| 7. 로봇 학습·LLM | 시연 수집, LeRobot 데이터 형식, imitation/RL/VLA, 구조화된 작업 계획 | 평가 가능한 정책 또는 제한된 명령 집합의 작업 플래너 |
| 8. 통합·Sim-to-Real | 도메인 랜덤화, 캘리브레이션, 실시간/안전 제약, 관측·로그·롤백 | 시뮬레이션과 실제 장비 간 차이를 수치로 비교한 배포 보고서 |

## 커리큘럼 반영

KANT의 공개 과정은 개발환경·Python·ROS 2·3D 좌표 변환·OpenCV/LLM 기초, 비전 추적, 자율주행/로봇 AI, 다중 로봇/공정 자동화, Digital Twin/Sim-to-Real 프로젝트로 이어진다. PinkLAB 실습은 MuJoCo–ROS 2 연동, TF/센서, SLAM/Nav2, MoveIt 2·ArUco, LLM 작업계획을 하나의 주행-조작 미션에 연결한다.

이 공개 교육 자료는 교육 설계 참고점이다. 회사의 하드웨어, OS/ROS 배포판, 안전 기준에 맞는 실습 난이도와 순서를 별도로 검증한다.
