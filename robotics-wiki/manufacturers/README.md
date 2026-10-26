# 제조사·기종별 로봇 문서

공식 매뉴얼을 모델·세대·컨트롤러·소프트웨어 기준으로 찾아가도록 정리한다. 모델명만 비슷한 로봇의 배선, 안전 설정, 동작 한계, API를 서로 적용하지 않는다. 아래 목록은 2026-10-21 확인한 공개 문서의 색인이다.

## 국내 제조사

| 제조사 | 확인된 제품군/대표 모델 | 공식 문서의 형태 | 안내 |
|---|---|---|---|
| [두산로보틱스](doosan.md) | A0509/A0912, M0609/M0617/M1013/M1509, H2017/H2515, P3020, E0509 | 모델·시리즈·매뉴얼 버전이 분리된 웹 매뉴얼 | 시리즈에 따라 기능 제한과 사양이 다르므로 해당 모델 페이지 확인 |
| [레인보우로보틱스](rainbow.md) | RB3-730ES, RB3-1200E, RB5-850E, RB6, RB10-1300E, RB16-900E, RB20-1900ES, RB30-1400ES, RB-Y1 | RB 시리즈 한국어 사용자 매뉴얼 PDF, 다운로드 센터, RB-Y1 웹 매뉴얼/GitHub | E/U 버전과 컨트롤박스 세대(CB)를 먼저 확인 |
| [뉴로메카](neuromeka.md) | Indy7/12 및 V2/V3, Pro, Indy-RP2; OPTi/NURI 계열 | 공식 제품/다운로드, GitHub ROS 2 드라이버 | 공개 제품 다운로드에는 CAD/카탈로그가 중심; Indy ROS 2 브랜치의 지원 모델·배포판을 따를 것 |
| [한화로보틱스](hanwha.md) | HCR-3A/5A/12A, HCR-10L/14 | 세대별 공식 사용자 매뉴얼, Rodi Script 가이드 | 세대와 컨트롤러/소프트웨어 정보를 매뉴얼 표지에서 일치시킬 것 |
| [HD현대로보틱스](hd-hyundai.md) | 산업용 HH/HDR/HDP 등, Hi5a/Hi6/Hi7 컨트롤러 | HRBook 웹 매뉴얼, 모델/컨트롤러별 다운로드 센터 | 암 모델과 제어기 모델이 모두 맞는 문서를 선택 |
| [ROBOTIS](robotis.md) | OpenMANIPULATOR-X, TurtleBot 연동 교육용 매니퓰레이터 | e-Manual, 조립/ROS 2/MoveIt/Gazebo 가이드, upstream GitHub | 교육·프로토타이핑용; 산업용 안전 로봇으로 간주하지 말 것 |

## 해외 주요 제조사

| 제조사 | 기종군 | 공식 문서 진입점 | 확인 시 주의 |
|---|---|---|---|
| [FAIRINO FR3](fairino.md) | FR3 및 변형, FR 시리즈 | [공식 매뉴얼](https://manual.fairino.support/latest/) · [다운로드](https://fairino.com/download2.html) | FR3 변형(suffix), 컨트롤러/소프트웨어 버전 확인; 본 문서에 FR3 초기 안내 보유 |
| Universal Robots | UR3e/UR5e/UR10e/UR16e/UR20/UR30 | [공식 문서 포털](https://docs.universal-robots.com/) · [매뉴얼 다운로드](https://www.universal-robots.com/download/) | 모델과 PolyScope/software 버전을 매뉴얼 선택에 사용 |
| ABB | GoFa, YuMi, IRB 등 | [ABB Library](https://library.abb.com/) · [GoFa](https://www.abb.com/global/en/areas/robotics/products/robots/collaborative-robots/gofa) | 제품·제어기·RobotWare 조합의 Operating/Product Manual 확인 |
| KUKA | KR 계열 및 협동로봇 | [KUKA Xpert](https://my.kuka.com/) | 일부 기술 문서는 계정/제품 등록 접근; 제어기 및 KSS 버전 필수 |

## 장비 인수 시 기록할 정보

`정확한 모델/옵션`, `암 serial 또는 명판 식별`, `컨트롤러 모델`, `펌웨어/소프트웨어 버전`, `티치펜던트 버전`, `ROS 배포판·드라이버 commit/tag`, `툴/그리퍼 및 설치 방향`을 기록한다. 공개 포털 문서만으로 실제 납품 장비의 적용판을 확정할 수 없으면 제조사/공급사에 매뉴얼 개정판과 호환성을 확인한다.

## 자료 품질 원칙

- 제품 페이지, 카탈로그, CAD는 사용자 매뉴얼을 대체하지 않는다. 표에 링크가 있어도 매뉴얼 공개 여부를 별도로 표시한다.
- 제조사 공식 매뉴얼/지원 사이트와 upstream 저장소를 우선한다. 검색 결과에만 노출된 사본이나 제3자 PDF 미러는 정본으로 취급하지 않는다.
- 설치·정비·안전 절차는 실제 로봇의 명판, 매뉴얼 개정판, 위험성 평가를 확인한 뒤 적용한다.
- 자세한 ROS 드라이버/지원 버전과 안전 주의는 각 제조사 페이지와 공식 출처 등록부를 본다.
