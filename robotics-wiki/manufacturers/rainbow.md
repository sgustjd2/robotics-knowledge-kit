# 레인보우로보틱스 모델·매뉴얼 안내

- 확인일: 2026-10-21
- 주 출처: [공식 다운로드 센터](https://rainbowrobotics.com/download), [RB 시리즈 제품 페이지](https://www.rainbowrobotics.com/rb)

## 제품과 문서

| 제품군/대표 기종 | 확인한 공식 자료 | 적용 전 구분 |
|---|---|---|
| RB 협동로봇: RB3-730ES, RB3-1200E, RB5-850E, RB6-920E/RB6-1700E, RB10-1300E, RB16-900E, RB20-1900ES, RB30-1400ES | [RB 사용자 매뉴얼 V6.3, 한국어, 업데이트 2024-09](https://rainbowrobotics.com/product_spec/download?id=8d974364-0a59-472a-b51c-06157a11be33) · [다운로드 센터](https://rainbowrobotics.com/download) | 매뉴얼 표지/본문이 나열하는 세부 모델 및 해당 암의 E/U 버전, 컨트롤박스 세대(CB04–CB09)를 대조 |
| RB-Y1 이동형 양팔 로봇 | [다운로드 센터](https://rainbowrobotics.com/download)에서 버전별 도면과 자료 제공; [공식 웹 매뉴얼/GitHub 진입](https://www.rainbowrobotics.com/en_main) | 모바일 베이스 구동 방식(차동/메카넘)과 암/시스템 버전을 기록 |
| RBQ 및 기타 제품 | [공식 다운로드 센터](https://rainbowrobotics.com/download) | RB 매뉴얼이 자동으로 적용된다고 가정하지 말고 제품별 문서를 찾을 것 |

센터에는 협동로봇별 CAD와 인증서, RB 시리즈 매뉴얼이 별도 자료로 게시되어 있다. CAD/인증서는 조작·정비 매뉴얼이 아니다. 현재 공개 매뉴얼의 확인된 표기는 V6.3이며, 매뉴얼이 적용하는 E/U 모델 목록을 확인하고 장비의 제어기 및 소프트웨어와 일치시킨다.

## ROS·통합

제품 페이지는 자체 리눅스 기반 운영체제를 설명하지만, 이를 특정 ROS 2 배포판과의 호환 보증으로 해석하면 안 된다. ROS 드라이버나 프로토콜을 사용할 때에는 제조사에서 현재 제공하는 공식 repository/문서, 브랜치, 컨트롤러 및 firmware 조합을 별도 검증해 이 페이지에 추가한다. 다운로드 센터의 문서만으로 ROS 배포판 지원을 확정하지 않는다.

## 현장 적용 체크

정확한 `RB 모델`, `E/U 세대`, `CB 모델`, 제어 SW 버전, 장착 방향, 툴/워크피스 하중, 툴 I/O 및 셀 안전 구성을 기록한다. 매뉴얼은 singular area 및 TCP/좌표계 관련 제약을 설명하므로 직교 좌표 이동을 실제 셀에서 검증한다. 안전기능·협업 속도 설정은 현재 장비의 안전 매뉴얼과 통합 위험성 평가로 확인한다.
