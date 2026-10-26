# FAIRINO 협동로봇 사용 안내 (초기판)

- 조사일: 2026-10-21
- 식별 상태: 사용자 확인으로 FAIRINO FR3. 정확한 suffix(예: FR3-C/WMS/WML)와 컨트롤러/소프트웨어 버전은 명판에서 추가 확인 필요.
- 문서 기준: [FAIRINO Collaborative Robot User Manual 4.0.0](https://manual.fairino.support/latest/) 및 제조사 다운로드 센터. 매뉴얼 changelog는 V4.0.0을 2026-09-23자로 표시한다.

## 먼저 장비를 식별

로봇 암 또는 컨트롤 박스 명판에서 아래 정보를 기록한다. FR3 기본 모델임은 확인됐지만 suffix에 따라 사양/기능이 달라질 수 있고, 제어 SW 버전에 따라 API와 설정이 달라질 수 있다.

| 필요한 정보 | 확인 위치/이유 |
|---|---|
| 정확한 모델명 및 모델 suffix | FR3/FR5/FR10 등 기본 모델뿐 아니라 C/WMS/WML 등 변형 여부에 따라 하드웨어·기능 차이가 있다. |
| 컨트롤 박스 및 제어 소프트웨어 버전 | 공식 매뉴얼에는 제어 소프트웨어 릴리스와 하드웨어 변형별 차이가 기록된다. 매뉴얼 4.0.0은 QX/LA 소프트웨어 패키지를 별도로 나열한다. |
| Teach pendant/button box 모델 | WebApp/조작 버튼과 안전 기능 확인에 필요하다. |
| 장착 방향·공구/그리퍼·케이블 | 설치 방향과 실제 말단하중/TCP를 설정해야 한다. |
| ROS 배포판·Ubuntu·드라이버 버전 | 공식 ROS 2 가이드는 Ubuntu 22.04 + ROS 2 Humble을 권장하며 다른 조합은 자동 호환을 뜻하지 않는다. |

## 공식 문서 바로가기

- [공식 사용자 매뉴얼 홈](https://manual.fairino.support/latest/): 제품 매트릭스, Quick Start, 설치, WebApp, 파라미터, 수동 교시, 프로그램, I/O, 안전, API
- [다운로드 센터](https://fairino.com/download2.html): 카탈로그, 모델별 도면/3D CAD, 소프트웨어, SDK, 프로토콜, ROS1/ROS2 자료
- [버전 4.0.0 변경 기록](https://manual.fairino.support/latest/CobotsManual/version_intro.html): 현행 문서 revision 확인
- [설치·안전](https://manual.fairino.support/latest/CobotsManual/installation.html)
- [기본 설정: 설치방향, payload, TCP](https://manual.fairino.support/latest/CobotsManual/parameter_setting.html)
- [좌표계와 TCP 설정](https://manual.fairino.support/latest/CobotsManual/base.html)
- [ROS 2 `fairino_hardware` 가이드](https://manual.fairino.support/latest/ROSGuide/ros2guide.html)
- [MoveIt 2 플러그인 가이드](https://manual.fairino.support/latest/ROSGuide/moveIt2.html)
- [안전 설정 문서](https://manual.fairino.support/latest/CobotsManual/safety.html)

## FR 시리즈 기본 파악

현행 매뉴얼은 FR3, FR3-C/WMS/WML, FR5, FR10, FR16, FR20, FR30 등을 다룬다. 모델별 이름이 유사해도 동일 사양으로 간주하지 않는다. 제조사 제품 페이지의 표준 FR3 표기는 6축, reach 622mm, 반복정밀도 ±0.02mm, 정격 payload 3kg이다. 제품 페이지에는 최대 5kg 표기도 있지만, 매뉴얼의 payload 설정 범위는 FR3 3kg으로 기재돼 있다.

| 항목 | 확인된 표준 FR3 정보 | 확인 근거 |
|---|---|---|
| 자유도 | 6개 회전 관절 | [제품 사양](https://www.fairino.com/FR/5.html) |
| Reach | 622 mm | [제품 사양](https://www.fairino.com/FR/5.html) |
| 반복정밀도 | ±0.02 mm | [제품 사양](https://www.fairino.com/FR/5.html) |
| Payload | 정격 3 kg. 제품 페이지에 max 5 kg 문구가 있으나 매뉴얼의 FR3 payload 설정 범위는 3 kg | [제품 사양](https://www.fairino.com/FR/5.html), [매뉴얼 payload 설정](https://manual.fairino.support/latest/CobotsManual/parameter_setting.html) |
| 베이스 고정 | 표준 FR3: M6 볼트 4개, 체결 토크 ≥10 Nm, φ5 위치결정 핀홀 | [설치 매뉴얼](https://manual.fairino.support/latest/CobotsManual/install_power_robot.html) |

**Payload 표기 확인 필요:** 제품 페이지의 “3kg (Max:5kg)”와 매뉴얼 payload 설정의 “FR3: 3kg”이 다르다. 설치된 suffix의 load curve와 제조사의 서면 사양 확인 전에는 5kg을 허용 payload로 사용하지 않는다. 허용치는 공구·어댑터·케이블을 포함한 질량, 무게중심/모멘트, 동작 속도와 설치 조건을 함께 대조한다. 공구 질량 및 무게중심을 등록해야 drag/collision 기능이 의도대로 동작한다.

## 첫 사용 권장 순서

1. **명판과 버전 기록**: 모델 suffix, control box, controller software, teach pendant를 적는다.
2. **장착 확인**: 표준 FR3로 확인되면 M6 4개 및 ≥10Nm 규격을 확인하고, 정확한 suffix에 따른 설치 문서를 대조한다. 장착 방향이 바뀌면 WebApp의 installation setting도 실제 방향과 일치시킨다.
3. **안전회로 확인**: 주변 위험을 평가하고 필요한 guard/interlock 등 외부 보호장치를 구성한다. 첫 가동 전 E-stop과 protective/safety stop 입력을 실제 설치 상태에서 검증한다.
4. **WebApp/수동 교시**: 제조사 Quick Start대로 전원·enable·상태표시를 확인한 뒤 저속·제한된 공간에서 수동 이동한다.
5. **공구 설정**: 말단 공구를 장착한 후 payload와 무게중심을 입력하고, TCP를 교정·적용한다. 외부 tool frame이 틀리면 Cartesian 목표 위치가 달라진다.
6. **기본 동작 검증**: 비어 있는 작업공간에서 낮은 속도로 joint/Cartesian 이동, 정지, 재시작, limit 동작을 차례로 확인한다.
7. **자동 프로그램/외부 연동**: I/O, 그리퍼, PLC, SDK, ROS 2는 안전 상태와 tool/base frame을 검증한 뒤 하나씩 연결한다.

## ROS 2 및 MoveIt 2

- 공식 ROS 2 가이드의 권장 조합은 Ubuntu 22.04 LTS + ROS 2 Humble + `ros2_control`이다. 배포판·패키지·로봇 소프트웨어 버전이 맞는지 먼저 대조한다.
- 가이드는 `fairino_msgs`와 `fairino_hardware` 사용을 설명하며, MoveIt 2 문서는 `fairino3_v6_moveit2_config` 등 모델별 description/config 패키지를 안내한다. FR3 suffix에 맞는 package를 확인한다.
- ROS 하드웨어 인터페이스와 MoveIt 설정의 관절 이름을 일치시켜야 한다. 공식 문서 예시는 `j1`–`j6`를 사용하지만, 실제 설치 패키지와 URDF가 기준이다.
- 가이드의 예제는 실제 하드웨어를 구동할 수 있다. **처음에는 fake/simulation hardware로 모델·controller·joint mapping을 확인하고**, 실제 로봇 연결 옵션은 별도 승인/안전 절차 이후에만 사용한다.
- API와 컨트롤러 명령의 단위·속도 스케일·absolute/delta semantics는 SDK/프로토콜 문서 및 설치 버전에서 확인한다. 예제 숫자를 실제 로봇에 그대로 복사하지 않는다.

## 안전에서 놓치지 말 것

- 제조사 매뉴얼은 통합업체가 전체 로봇 응용의 위험 평가, 외부 안전장치, 설치 검증과 사용 지침을 책임져야 한다고 설명한다. 협동로봇이라는 명칭만으로 작업자 접촉이 안전하다고 결론내리지 않는다.
- 비상정지와 보호정지는 목적·정지 동작이 다르다. 제조사 매뉴얼의 안전 I/O는 이중 채널을 유지하도록 지시한다. safety 신호를 일반 PLC 신호처럼 단일 채널로 우회하지 않는다.
- 비상정지, 도어/interlock, 보호정지, 복귀/재시작은 로봇·컨트롤러·외부 설비가 실제 연결된 상태에서 통합 검증한다.
- 이 문서는 제조사 자료의 탐색 요약이다. 위험성 평가, 적합성 판정, 안전회로 설계를 대체하지 않는다.

## 팀 내부에서 추가 확보할 것

- 명판 사진(시리얼 번호는 공유 문서에 올리지 않거나 마스킹)
- 현재 robot/controller software 버전과 설치된 ROS 드라이버 commit/tag
- 교정된 URDF/DH, joint limits, tool/base frame, payload/CoG
- 실제 I/O 배선도, safety circuit 도면, E-stop/protective stop 검증 기록
- 연결 가능한 그리퍼·카메라·force sensor 목록과 각 펌웨어/프로토콜

**다음 단계:** FR3 suffix, 컨트롤러/소프트웨어 버전, 그리퍼 정보가 확보되면 이에 맞춘 설치/가동/ROS/그리퍼 체크리스트로 이 문서를 좁힌다. 해당 버전 확인 전에는 모델별 전기 배선 핀 번호와 API 호환성을 확정하지 않는다.
