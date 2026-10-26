# ROS 2와 로봇 제어

## 학습 축

- ROS 2 개념과 배포판: node, topic, service, action, parameter, QoS, executor, launch, colcon, rosbag.
- 모델과 좌표계: URDF/Xacro, link/joint, inertial/collision/visual, TF tree, timestamp와 frame convention.
- 제어: ros2_control의 controller manager, hardware interface, controller lifecycle, mock/sim/real 하드웨어 전환.
- 하드웨어 통합: driver/plugin 경계, command/state interface, activate/deactivate/error lifecycle, 통신 지연과 watchdog 경로.
- 실시간성: 제어 주기와 jitter 측정, 느린 센서/장치의 비동기 분리, callback/executor와 제어 루프의 경계.
- 모바일 로봇: SLAM/AMCL, Nav2 costmap/planner/controller/behavior tree.
- 매니퓰레이션: MoveIt 2 planning scene, kinematics, collision checking, trajectory execution.

## 실무 확인

ROS 배포판·Ubuntu·시뮬레이터 조합을 먼저 고정한다. QoS, clock/use_sim_time, frame ID, 단위, 컨트롤 주기, joint limit은 통합 전에 확인한다. rosbag으로 센서/제어 동작을 재현하고 실제 로봇 연결 전에는 mock hardware 또는 시뮬레이션에서 안전한 속도/범위를 검증한다.

실제 드라이버는 하드웨어 lifecycle과 timeout/error 전이를 정의한다. 제어 루프 안의 blocking I/O, 동적 메모리 할당, 오래 걸리는 센서 읽기를 피하고, 비동기 실행을 택하면 데이터 최신성·동기화·missed-cycle 동작을 측정한다. ROS 2 실시간 스케줄링 설정만으로 end-to-end deadline이 보장된다고 가정하지 않는다.

## 기준 링크

- [ROS 2 문서](https://docs.ros.org/)
- [ros2_control 문서](https://control.ros.org/rolling/doc/ros2_control/doc/index.html)
- [Nav2 저장소·문서 링크](https://github.com/ros-navigation/navigation2)
- [MoveIt 2 저장소와 배포판 지원](https://github.com/moveit/moveit2)
- [Universal Robots ROS 2 description 예제](https://docs.universal-robots.com/Universal_Robots_ROS2_Documentation/doc/ur_description/doc/index.html)

설치 단계에서는 해당 시점의 지원 배포판과 binary availability를 공식 표에서 재확인한다.
