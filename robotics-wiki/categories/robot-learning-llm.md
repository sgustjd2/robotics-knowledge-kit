# 로봇 학습과 LLM

## 학습 축

- Hugging Face Hub에서 robotics 모델·데이터셋·Space·논문을 탐색한다.
- LeRobot으로 시연 수집, teleoperation, 데이터 정리, 정책 학습/평가, 로봇별 인터페이스를 살핀다.
- Imitation learning, RL, VLM/VLA, world model은 과제·데이터·하드웨어 요구사항과 평가 지표를 함께 기록한다.
- LLM은 자연어를 제한된 작업 스키마로 바꾸고, 검증된 Task Manager가 Nav2/MoveIt 등 기존 제어 계층을 호출하는 구조로 사용한다.

## 실무 확인

데이터셋/모델 카드, 라이선스, 하드웨어 요구사항, 논문/코드 연결, 재현 절차와 평가 조건을 확인한다. 모델 생성 출력을 로봇에 바로 전달하지 말고 schema validation, workspace/safety constraints, timeout, 승인 가능한 action set, 비상 정지 경로를 둔다.

## 기준 링크

- [LeRobot 문서](https://huggingface.co/docs/lerobot)
- [LeRobot GitHub](https://github.com/huggingface/lerobot)
- [Hugging Face LeRobot 조직·최근 활동](https://huggingface.co/lerobot)
- [Hugging Face robotics task 검색](https://huggingface.co/tasks/robotics)
