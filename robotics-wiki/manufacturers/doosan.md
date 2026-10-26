# 두산로보틱스 모델·매뉴얼 안내

- 확인일: 2026-10-21
- 자료 기준: 제조사 웹 사용자 매뉴얼 V3 계열과 공식 카탈로그. 웹 매뉴얼은 개정판이 바뀔 수 있으므로 아래 링크에서 실제 장비 모델과 개정판을 확인한다.

## 모델 찾기

| 시리즈 | 공식 문서에서 확인한 대표 모델 | 매뉴얼 시작점 |
|---|---|---|
| A | A0509/A0509S, A0912/A0912S 및 F&B 변형 | [A Series V3 매뉴얼](https://manual.doosanrobotics.com/en/user-manual/3.4.0/2-a-series/a-series) |
| M | M0609, M0617, M1013, M1509 | [M/H Series V3 매뉴얼](https://manual.doosanrobotics.com/en/user-manual/3.5.0/1-m-h-series/product-specifications-general) |
| H | H2017, H2515 | [M/H Series V3 매뉴얼](https://manual.doosanrobotics.com/en/user-manual/3.5.0/1-m-h-series/product-specifications-general) |
| P/E | P3020, E0509 등 카탈로그 제품군 | [공식 카탈로그](https://www.doosanrobotics.com/pdf/catalog/External_DoosanRobotics_renew_eng.pdf); 제품에 맞는 사용자 매뉴얼 버전을 검색/Robot LAB에서 확인 |

공식 매뉴얼에는 V3.6.0의 A-series 시작/안내 페이지도 게시되어 있다. A·M/H·P/E 간 문서 트리와 제공 기능이 다르므로 시리즈 경로를 그대로 사용한다. P/E 제품이 카탈로그에 있다고 해서 모든 모델의 공개 매뉴얼 링크를 확인한 것으로 보지 않는다.

## 개발 문서 및 주의점

- 업데이트된 매뉴얼 진입은 [Doosan Robot LAB](https://robotlab.doosanrobotics.com/) 안내를 따른다.
- 로봇 계열별 힘 감지 방식과 기능 지원에 차이가 있다. 예를 들어 A/E, A-S, M/H/P 계열 기능표를 해당 모델 매뉴얼에서 확인한다.
- 부팅/초기 설정은 [초기 시작 V3.6.0](https://manual.doosanrobotics.com/en/user-manual/3.6.0/2-a-series/initial-start-up) 절차를 기준으로 하되, 시리즈별 설치 안내를 대조한다.
- ROS 드라이버·DRL API·컨트롤러 연결은 본 문서의 사양 표를 대신하지 않는다. 적용할 모델, 컨트롤러 및 소프트웨어 버전 기준 upstream/제조사 문서를 별도로 등록한다.

## 현장 체크리스트

암 명판의 정확한 모델(A0509S 등), 제어기 옵션, TP 세대, DART/컨트롤러 소프트웨어 버전을 기록한다. 로봇 설치 방향, 공구와 작업물의 총 하중 및 무게중심, I/O 배선, 안전 구성은 해당 매뉴얼 및 셀 위험성 평가를 따른다. 다른 시리즈의 하중표나 기능표를 옮겨 적용하지 않는다.
