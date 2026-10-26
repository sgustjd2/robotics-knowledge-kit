# 뉴로메카 모델·매뉴얼 안내

- 확인일: 2026-10-21
- 공식 출처: [Indy 제품군](https://www.neuromeka.com/indy) · [공식 다운로드](https://en.neuromeka.com/download)

## 제품별 문서 경로

| 제품군 | 공식 자료에서 확인된 기종 | 자료/적용 경계 |
|---|---|---|
| Indy 협동로봇 | Indy7, Indy7 Pro, Indy12, Indy12 Pro, V3 제품 표기; 연구용 7-DoF Indy-RP2 | [제품 페이지](https://www.neuromeka.com/indy), [다운로드](https://en.neuromeka.com/download)에는 카탈로그 및 3D CAD/도면 공개. 이 페이지에서 사용자 매뉴얼 PDF/웹 포털은 확인되지 않아 공급사에 모델·컨트롤러별 최신 사용/안전 매뉴얼 요청 |
| Indy ROS 2 | upstream `indy-ros2`, 현재 공개된 `jazzy-indyDCP3` 브랜치 | [README와 모델/설치 안내](https://github.com/neuromeka-robotics/indy-ros2/tree/jazzy-indyDCP3) |
| OPTi/NURI 및 확장 제품 | 공식 다운로드 센터의 OPTi5, NURI 계열 CAD/도면 목록 | Indy 기구/하드웨어 설명이나 API를 다른 계열에 전용하지 않음; 제품별 매뉴얼과 인터페이스를 공급사에서 확보 |

### ROS 2 공개 정보

해당 upstream README는 ROS 2 Jazzy 설치를 요구하고 `indy_type`으로 Indy7/7 V2/V3, Indy12/V2/V3, IndyRP2 계열을 선택한다고 기술한다. 같은 저장소는 더 많은 NURI/OPTi/EIR 타입도 나열하므로 **드라이버에 로봇 설명이 있다**는 사실과 **실물 모델·기능 전체가 지원된다**는 주장을 구분한다. 실제 암 구동 전 지원 매트릭스, 브랜치 변경일, controller/firmware, 안전 제한을 제조사 문서와 맞춘다.

`indy-ros2`에는 Gazebo·MoveIt 시뮬레이션 실행 경로도 있으나, 시뮬레이션 지원은 실물 하드웨어 연결이나 안전 승인과 동등하지 않다. 인수 후에는 정확한 `Indy 모델/세대`, `IndyCB 2.0/3.0 등 컨트롤러`, `DCP 세대와 firmware`, `ROS 2 배포판`, 사용할 repo branch/commit을 기록한다.
