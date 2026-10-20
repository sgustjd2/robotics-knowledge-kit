# 비전과 센서

## 학습 축

- OpenCV 기반 이미지 처리, 카메라 내·외부 파라미터, 왜곡 보정, checkerboard calibration, pinhole projection, PnP.
- 2D 검출/추적, 깊이 카메라와 point cloud, 3D pose, hand-eye calibration.
- 카메라·LiDAR·IMU의 frame/time synchronization, 좌표 변환과 센서 융합.
- ROS 2 image/CameraInfo/PointCloud2 메시지, 필요에 따라 image_transport와 추론 가속.

## 실무 확인

FPS만으로 품질을 판단하지 말고 reprojection error, pose error, 추적 끊김 복구, latency, dropped frames와 조명/가림 조건을 기록한다. OpenCV API와 모델 런타임은 프로젝트 버전에 맞춰 테스트한다.

## 기준 링크

- [OpenCV 5 문서](https://docs.opencv.org/5.0/)
- [OpenCV 릴리스](https://opencv.org/releases/)
- [ROS 2 이미지 관련 패키지 인덱스](https://index.ros.org/)
