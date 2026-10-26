# 개발 도구와 운영

## 조사 축

- Ubuntu LTS/ROS 설치 환경, udev/USB/serial, SSH, systemd, Jetson/Edge AI와 GPU 지원.
- GitHub upstream: 최근 release/tag, commit/activity, issues/PR, CI, distro matrix, license, maintainer response.
- 개발·시각화: VS Code/IDE, RViz2, Foxglove, PlotJuggler, Blender/CAD, container, bag/metrics tooling.
- 릴리스 운영: 잠금된 버전, 빌드 재현성, rosbag/실험 메타데이터, 로그, 장애 복구와 롤백.
- 통합/현장 운영: 로봇·센서·펌웨어·ROS·시뮬레이터 버전 조합표, 캘리브레이션 파일 추적, 네트워크/시간 동기화, 진단/원격 업데이트와 복구 계획.
- 검증 파이프라인: CI에서 빌드·lint·단위/launch test를 자동화하고, 시뮬레이션/HIL/실기 검증을 별도 단계와 증거로 추적.

## 자료 평가

GitHub stars는 관심 지표일 뿐 유지보수·품질의 대리값으로 쓰지 않는다. 최근 release, 지원 버전, CI, 이슈 처리, license, 하드웨어 검증을 확인한다. 블로그/영상은 날짜와 실제 사용 환경을 적고 공식 문서로 교차 확인한다.

실기 배포에는 코드뿐 아니라 로봇 펌웨어, ROS 배포판, parameter, calibration, model/dataset, simulator asset의 버전과 롤백 대상을 함께 기록한다. 배포 후에는 제어 주기, 지연, 센서 stale 상태, 안전 정지와 오류 원인을 진단할 수 있어야 한다.

## 시작점

- [ROS package index](https://index.ros.org/)
- [GitHub Robotics topic](https://github.com/topics/robotics)
- [Hugging Face robotics](https://huggingface.co/robotics)
- [Foxglove 문서](https://docs.foxglove.dev/)
