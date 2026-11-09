# 로봇 학습과 LLM

## 학습 축

- Hugging Face Hub에서 robotics 모델·데이터셋·Space·논문을 탐색한다.
- LeRobot으로 시연 수집, teleoperation, 데이터 정리, 정책 학습/평가, 로봇별 인터페이스를 살핀다.
- Imitation learning, RL, VLM/VLA, world model은 과제·데이터·하드웨어 요구사항과 평가 지표를 함께 기록한다.
- LLM은 자연어를 제한된 작업 스키마로 바꾸고, 검증된 Task Manager가 Nav2/MoveIt 등 기존 제어 계층을 호출하는 구조로 사용한다.

## 실무 확인

데이터셋/모델 카드, 라이선스, 하드웨어 요구사항, 논문/코드 연결, 재현 절차와 평가 조건을 확인한다. 모델 생성 출력을 로봇에 바로 전달하지 말고 schema validation, workspace/safety constraints, timeout, 승인 가능한 action set, 비상 정지 경로를 둔다.

## 기준 링크

- [6축 로봇팔 데이터셋 사전](../datasets/6dof-arm-dataset-dictionary.md): 실기 6축·시뮬레이션·전이·파지 데이터 분류 및 호환성 점검

- [LeRobot 문서](https://huggingface.co/docs/lerobot)
- [LeRobot GitHub](https://github.com/huggingface/lerobot)
- [Hugging Face LeRobot 조직·최근 활동](https://huggingface.co/lerobot)
- [Hugging Face robotics task 검색](https://huggingface.co/tasks/robotics)
- [Microduck + Isaac Lab 3.0 sim-to-real 예제](https://huggingface.co/blog/nvidia/microduck-isaac-lab-sim-to-real): 2026-10-21 공개된 소형 biped 보행 정책 학습→평가→ONNX export→실기 배포 사례. 사용 대상 기종/모델 형식과 license는 예제의 실제 코드·모델 카드에서 확인한다. 보행용 biped의 성공이 6축 팔이나 FAIRINO FR3 제어 호환성을 뜻하지 않는다.

## LeRobot v0.7.0 업데이트 (2026-11-05)

[upstream release](https://github.com/huggingface/lerobot/releases/tag/v0.7.0)은 데이터 스트리밍, 원격 추론과 학습/하드웨어 계층을 갱신했지만 v0.6.1에서 설치·학습·추론 API가 크게 바뀌었다. Linux 기본 PyTorch wheel이 CUDA 13이며 NVIDIA driver 580.65 이상을 요구하고, FSDP1→FSDP2/HSDP·W&B→Trackio 등 migration 항목이 있다. 코드는 Apache-2.0(저장소 LICENSE 확인); 각 모델·데이터셋은 개별 카드의 라이선스를 따로 확인한다. FR3 연동은 지원으로 간주하지 말고 해당 driver, 제어 인터페이스와 안전 경계를 별도로 검증한다.
