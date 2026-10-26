# 검증·안전·보안

로봇은 소프트웨어 변경이 센서, 네트워크, 구동기와 사람 주변의 물리 동작으로 이어진다. 기능 검증, 실제 장비 검증, 안전 기능 검증의 증거를 분리해서 관리한다.

## 검증 단계

1. 정적 검사와 단위 테스트로 메시지 변환, 좌표·단위, 제한값, 상태 전이를 확인한다.
2. ROS 2 launch integration test로 노드 시작 순서, topic/service/action 연결, 종료 코드, 예기치 않은 프로세스 종료를 확인한다.
3. 시뮬레이션에서 반복 가능한 회귀 시나리오를 실행하고 rosbag, 설정, seed, simulator/plugin 버전을 함께 보관한다.
4. HIL 또는 mock hardware로 driver lifecycle, timeout, 통신 단절·복구, 제어기 전환을 확인한다.
5. 실제 장비 검증은 승인된 위험 통제와 저속/제한된 작업 공간부터 진행하고, 합격 기준·장비 구성·결과를 기록한다.

시험 단계를 통과했다는 사실이 다음 단계나 안전 적합성을 자동으로 증명하지 않는다. 시뮬레이션 결과, HIL 결과, 실기 결과와 위험 평가 기록을 구분한다.

## 안전 경계

- 작업·장비·작업공간의 위험을 설계, 통합, 시운전, 운전, 정비 단계에서 검토하고 보호 조치와 재검토 조건을 기록한다.
- ROS 노드의 속도/위치 제한, watchdog, software stop은 독립적인 안전 정격 회로·장치나 안전 기능을 대신하지 않는다.
- 비상 정지, 보호 정지, 안전 스캐너/인터록, 복구 절차는 로봇 종류와 적용처에 맞게 책임자가 설계·검증한다. LLM이나 일반 목적 OS 프로세스에 안전 기능을 맡기지 않는다.
- 산업용 로봇 표준은 로봇 자체와 응용/셀 통합 요구가 나뉠 수 있다. 표준 번호나 제목만으로 적용성을 판단하지 말고 대상 로봇·작업·관할의 현행 원문을 확인한다.

## 보안·운영 회복성

- ROS 2 graph에서 노드별 필요한 통신 권한만 부여하고, SROS 2/DDS-Security enclave와 키 저장소 배포·회전·폐기 절차를 검토한다.
- 미인증 네트워크에 ROS discovery나 actuator command graph를 노출하지 않는다. 개발/운영 도메인, 네트워크 경계, 원격 유지보수 권한을 분리한다.
- stale sensor data, packet loss, process crash, clock mismatch, overload, power/network loss를 장애 시나리오로 두고 안전한 정지/복구와 관측 로그를 정의한다.

## 기준 자료

- [ROS 2 launch_testing](https://docs.ros.org/en/rolling/p/launch_testing/): 여러 프로세스를 띄우는 launch 통합 시험
- [ROS 2 보안 설계: Security Enclaves](https://design.ros2.org/articles/ros2_security_enclaves.html): context와 enclave 권한 모델
- [ROS 2 DDS-Security 설계](https://design.ros2.org/articles/ros2_dds_security.html): DDS 보안 연동 배경
- [ISO 10218 표준 카탈로그](https://www.iso.org/search.html?q=ISO%2010218): 산업용 로봇 관련 현행 표준과 적용 범위를 확인할 때 사용
- [OSHA 로봇 개요](https://www.osha.gov/robotics/), [OSHA Technical Manual: Robotics](https://www.osha.gov/otm/section-4-safety-hazards/chapter-4): 작업장 위험, 시운전·정비 상황 및 위험 평가 참고

ISO 문서는 저작권이 있는 표준이다. 이 페이지는 표준 전문을 복제하지 않으며, 법규 적합성이나 안전 인증을 판정하지 않는다.
