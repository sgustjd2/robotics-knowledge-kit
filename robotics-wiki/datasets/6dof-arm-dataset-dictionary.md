# 6축 로봇팔 데이터셋: 검증된 실무 자료

- 확인일: 2026-10-21
- 기준: 제작자/기관의 공식 데이터 카드·저장소·논문에서 로봇 구성, 데이터 형식, 규모와 이용 조건을 확인할 수 있는 자료만 핵심 목록에 둔다.
- 범위: 공개된 조작 데이터. 검색 가능한 모든 HF/GitHub 업로드를 망라하지 않는다. 크기·버전·접근 조건은 변경될 수 있으므로 사용 직전 원문을 재확인한다.

## 혼동하면 안 되는 차이

- **6축 로봇팔**은 그리퍼를 제외한 독립 관절이 6개인 로봇이다. 모델의 관절 구성, 순서, 단위와 action 표현이 다르면 같은 6축이어도 action을 직접 재생할 수 없다.
- **6DoF grasp/pose**는 공간상의 위치 3축과 자세 3축이다. 관절 궤적이나 로봇 구동 명령 데이터가 아니다.
- 데이터 라이선스와 코드 라이선스가 함께 명시되지 않으면 별도로 취급한다. 아래의 이용 표기는 공식 원문에 표시된 범위만 요약한다.

## 우선 검토할 자료

| 우선순위 | 데이터 | 로봇 및 확인된 규모 | 형식·포함 정보 | 이용 조건 및 실무 판단 |
|---|---|---|---|---|
| 1 | [RoboAug UR5e subset](https://github.com/Open-X-Humanoid/RoboAug/tree/main/dataset) · [HF 데이터](https://huggingface.co/datasets/X-Humanoid/RoboAug-Datasets) | 실기 UR5e 단일 팔; 5개 task, 789 시연, 105,704 frames | episode 단위 HDF5; RGB/depth 멀티카메라, proprioception, 언어 지시. 공식 문서에 UR5e subset만 받는 다운로드 예제가 있다. | 공식 README는 데이터와 코드를 Apache-2.0으로 표기. train/val split은 없으므로 episode 단위로 직접 분할. **UR5e 실기 실험의 첫 후보.** |
| 2 | [BridgeData V2](https://rail-berkeley.github.io/bridgedata/) | 실기 WidowX 250 6DoF; 60,096 궤적(50,365 teleop + 9,731 scripted), 24개 환경, 13개 skill | 자연어 지시, JPEG 이미지 기반 궤적. RGB-D 및 카메라 구성은 수집 기간/환경에 따라 다름. 5Hz, 평균 38 timestep. | 데이터는 공식 페이지에서 CC BY 4.0으로 명시. WidowX 계열과 태스크 학습에 직접 관련성이 높지만 저주기라 고속 제어 데이터로 보기는 어렵다. |
| 3 | [ALOHA-Cosmos-Policy](https://huggingface.co/datasets/nvidia/ALOHA-Cosmos-Policy) | 실기 ALOHA 2 / ViperX 300 S 양팔; 4개 task, 성공 시연 185개 | HDF5 + MP4, 25Hz, top-down 1개 + wrist 2개 카메라. action/qpos 각 14차원(팔당 7차원). 6관절+그리퍼 구성은 플랫폼에 따른 해석이므로 HDF5 값 매핑을 확인한다. 이미지 256×256. | 데이터 카드는 CC BY 4.0. 성공 episode만 포함. 양팔 협동에 적합하며, 단일 팔 사용 시 단순히 action 반쪽을 잘라 쓰지 말고 task와 관측을 다시 구성해야 한다. |
| 4 | [RoboTwin 2.0 LeRobot 데이터](https://huggingface.co/docs/lerobot/en/robotwin) | 시뮬레이션; Hub 배포 문서 기준 50개 task에 100,000+ 궤적, 79.6GB. RoboTwin 시뮬레이터의 embodiment 목록에는 `ur5-wsg`, `piper`, `ARX-X5` 등이 있음 | LeRobot v3.0, 비디오 관측과 action labels. 문서에서 HF Datasets로 읽는 방법을 제공. | 해당 Hub 배포본은 Apache 2.0으로 표기. 공식 문서는 Linux + NVIDIA GPU 환경을 안내. `ur5-wsg`가 통합 Hub 데이터에 실제 포함됐는지는 subset 메타데이터 확인 전까지 보장하지 않는다. 실기 데이터로 혼동하지 않는다. |

## 조건부 활용 자료

| 자료 | 확인된 정보 | 조건 / 주의 |
|---|---|---|
| [RH20T](https://rh20t.github.io/) · [Cfg별 로봇 표가 있는 논문](https://rh20t.github.io/static/RH20T_paper_compressed.pdf) | 110K+ 실기 조작 시퀀스, RGB-D/IR, 관절각·토크, 6축 F/T 등. 논문 부록에서 Cfg3·Cfg4는 UR5로 기재. Cfg3·4 RGB 묶음은 공식 페이지상 각각 26GB·88GB. | 두 하위 라이선스가 다름: `scene_0001`–`scene_0005`는 CC BY-SA 4.0, `scene_0006`–`scene_0010`는 CC BY-NC 4.0. commercial use는 NC subset에서 금지되고 BY-SA 조건은 별도 준수해야 한다. 얼굴·음성이 포함될 수 있어 개인정보 처리 검토도 필요. 거대/다중 모달 연구에 적합하며 빠른 첫 실험용은 아님. |
| [DROID](https://droid-dataset.github.io/) · [학술 논문](https://www.roboticsproceedings.org/rss20/p120.pdf) | 실기 Franka Panda 7DoF; 공식 페이지 기준 76K 궤적, 약 350시간, 564 scene, 86 task. RLDS 데이터. | 6축 직접 구동 자료가 아니라 전이/표현 학습 참고용. 논문은 CC BY 4.0 공개를 명시한다. 대용량 저장·전처리 필요. |

## 목적별 선택

1. **UR5e 실기 모방학습 시작**: RoboAug의 `Single_Arm_UR_5e` subset을 받는다. 공식 loader로 episode 1개를 먼저 읽고 필드·카메라·관절/action 정의를 확인한 뒤 분할한다.
2. **WidowX 계열**: BridgeData V2의 teleoperated demonstrations만 먼저 확인한다. scripted rollout과 섞을 때는 데이터 출처를 구분한다.
3. **양팔 조작**: ALOHA 데이터로 양팔 정책을 평가한다. 두 팔 action을 단일 팔로 축소하려면 작업 조건과 입력 구성을 재설계한다.
4. **시뮬레이션 대량 데이터**: RoboTwin Hub dataset에서 목표 embodiment/task 조합의 존재를 먼저 검사한다. RoboTwin simulator의 embodiment 지원 문서만으로 Hub에 해당 robot 데이터가 포함된다고 간주하지 않는다.
5. **센서 융합·힘/촉각 연구**: RH20T에서 UR5 Cfg3/4 및 의도한 scene/license subset만 선택한다. 데이터 사용과 사람 식별정보 취급을 먼저 검토한다.
6. **타 로봇 사전학습**: DROID는 Panda 7축 기반 transfer 실험에만 둔다. 6축 joint action으로 직접 간주하지 않는다.

## 실험 전에 반드시 기록할 항목

| 확인 항목 | 기록 예시 |
|---|---|
| 하드웨어 구성 | arm 모델, URDF/kinematic model, gripper, payload |
| 상태/action | joint 이름·순서·단위·부호, 그리퍼 포함 여부, position/velocity/torque, absolute/delta |
| 시간 기준 | control frequency, timestamp 단위·동기화, episode 경계 |
| 관측 | 카메라 이름·좌표계·해상도·압축, depth 단위·보정 |
| split 및 품질 | episode/task/scene 기반 train-validation-test split, 성공/실패 라벨, 중복·누수 |
| 권리·개인정보 | 데이터와 코드 각각의 license, 상업 사용·재배포 조건, 얼굴·음성 처리 |

**실행 순서:** 카드/README와 license 확인 → 필요한 robot/task subset만 다운로드 → episode 하나를 열어 schema 및 시각화를 확인 → 데이터 split → 오프라인 학습·평가 → 안전 제한을 적용한 시뮬레이션/HIL → 담당자 승인 아래 실기 평가. 공개 action을 검증 없이 실제 로봇에 직접 재생하지 않는다.

## 이번 판에서 핵심 목록에서 제외한 후보

RoboMIND, RoboSet, RoboMimic, CALVIN, LIBERO, RoboCasa, ManiSkill 및 GraspNet/GraspClutter6D 등은 이 문서의 “검증된 6축 학습 데이터” 목록에 넣지 않았다. 일부는 연구 가치가 있지만 이 검토에서 데이터 버전별 이용 조건 또는 action/embodiment를 동일 수준으로 확인하지 못했거나, grasp pose·시뮬레이션 benchmark라 실기 궤적 학습 자료와 용도가 달랐다. GraspNet 공식 페이지는 규모·주석은 설명하지만 license 조건은 표시하지 않아 사용 가능 목록에서 제외했다. 요건이 확인되면 검증 근거를 함께 기록해 추가한다.
