# 비전과 센서

## 학습 축

- OpenCV 기반 이미지 처리, 카메라 내·외부 파라미터, 왜곡 보정, checkerboard calibration, pinhole projection, PnP.
- 2D 검출/추적, 깊이 카메라와 point cloud, 3D pose, hand-eye calibration.
- 카메라·LiDAR·IMU의 frame/time synchronization, 좌표 변환과 센서 융합.
- ROS 2 image/CameraInfo/PointCloud2 메시지, 필요에 따라 image_transport와 추론 가속.

## 실무 확인

FPS만으로 품질을 판단하지 말고 reprojection error, pose error, 추적 끊김 복구, latency, dropped frames와 조명/가림 조건을 기록한다. OpenCV API와 모델 런타임은 프로젝트 버전에 맞춰 테스트한다.

## 기준 링크

- [OpenCV 5.x 문서](https://docs.opencv.org/5.x/)
- [OpenCV 릴리스](https://opencv.org/releases/)
- [ROS 2 이미지 관련 패키지 인덱스](https://index.ros.org/)

## OpenCV 5.1 업데이트 (2026-11-06)

[OpenCV 5.1.0](https://github.com/opencv/opencv/releases/tag/5.1.0)은 Apache-2.0으로 배포되는 5.x 첫 기능 업데이트다. `cv::linearAssignment()`는 검출 결과와 트랙의 매칭에 활용할 수 있다. 5.0→5.1 업그레이드 전에 DNN `readNet*()` engine 인자 변경과 TensorFlow loader 제거를 확인하고, 모델은 ONNX 경로와 기존 카메라/추적 파이프라인 회귀 데이터로 검증한다. 상세 변경은 [upstream changelog](https://github.com/opencv/opencv/wiki/OpenCV-Change-Logs)를 기준으로 한다.
