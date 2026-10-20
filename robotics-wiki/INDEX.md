# Robotics Knowledge Index

내부 로봇 개발을 위한 출처 기반 WKI. 특정 교육 과정은 편집 기준으로만 참고하고, 기술 선택은 공식 문서·지원 버전·실측 결과로 다시 판단한다.

## 학습 및 시스템 맵

[권장 학습 경로](curriculum/learning-path.md)는 KANT 피지컬 AI 과정의 기초→제어/비전→자율주행/AI→다중 로봇·공정→디지털 트윈/Sim-to-Real 구성을 참고하고, PinkLAB MuJoCo+ROS 2 실습의 주행·조작·LLM 통합 예제를 실습 형태로 반영한다.

## 카테고리

| 분야 | 내용 |
|---|---|
| [ROS 2와 제어](categories/ros2-control.md) | ROS 2, TF, URDF/Xacro, ros2_control, Nav2, MoveIt 2 |
| [비전과 센서](categories/vision-sensors.md) | OpenCV, 카메라 보정, 3D 비전, LiDAR/IMU, 센서 융합 |
| [시뮬레이션과 디지털 트윈](categories/simulation-digital-twin.md) | MuJoCo, Gazebo, Isaac Sim/Lab, OpenUSD, Blender/CAD |
| [로봇 학습과 LLM](categories/robot-learning-llm.md) | LeRobot, Hugging Face Hub, 데이터셋, VLM/VLA, 작업 계획 |
| [개발 도구와 운영](categories/dev-tools-ops.md) | Ubuntu, GitHub, 컨테이너, 시각화, 계측, 배포 |

## 조사·신뢰 기준

- 세부 URL, 관찰 날짜, 버전/배포판, 라이선스와 실무 의미는 [출처 등록부](sources/registry.md)에 기록한다.
- 주간 변경은 [weekly](weekly/)에 날짜가 붙은 노트로 남긴다. 기존 항목을 덮어쓰지 말고 오류 수정은 변경 로그에 설명한다.
- 공식 문서와 upstream 저장소·릴리스 노트·논문을 우선한다. 블로그와 포럼은 사례/의견으로 표시하고 사실의 단독 근거로 쓰지 않는다.
- 버전 숫자는 확인 시점의 스냅샷이다. 설치나 설계 판단 전에 공식 지원 행렬을 다시 확인한다.
- 자료의 권리·라이선스를 존중한다. 접근 제한, 로그인 우회, 대량 수집은 하지 않는다. 요약은 재현 가능한 링크와 함께 작성한다.
