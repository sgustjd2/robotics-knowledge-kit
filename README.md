# 사내 로봇 개발 지식 킷

Claude Code, Antigravity, Codex가 함께 읽는 `SKILL.md`와 로봇 개발 지식베이스입니다.

## 구성

- `skill/SKILL.md`: 조사·정리·주간 갱신에 쓰는 공용 Agent Skill
- `robotics-wiki/`: 카테고리별 기준 자료, 학습 경로, 출처 목록, 주간 노트
- `install.ps1`: 현재 사용자 계정의 Codex·Claude Code·Antigravity 공용 스킬 폴더에 설치

## 설치

PowerShell에서 킷 폴더로 이동해 실행합니다.

```powershell
.\install.ps1
```

세 도구가 공통으로 `SKILL.md`를 읽도록 설치합니다. 지식베이스를 쓰려는 저장소에는 `robotics-wiki/` 폴더도 복사하거나 저장소 루트에 두세요. 현재 관리 위치는 `C:\workspace\robotics-knowledge-kit\robotics-wiki`이며, 저장소에 지식베이스가 없으면 이 위치를 사용합니다.

## 주간 갱신

Codex 자동화는 매주 월요일 오전 9시(Asia/Seoul)에 이 대화에서 실행되도록 설정했습니다. Codex 실행 환경이 작업 폴더를 열 수 있을 때 `robotics-wiki/weekly/`에 새 주간 노트를 추가하고 인덱스와 출처 목록을 갱신합니다. 다른 도구에서는 스킬에 “이번 주 로봇 지식 업데이트”라고 요청하면 같은 절차를 사용할 수 있습니다.

## 공유

팀 공용 Git 저장소에 `robotics-wiki/`와 `skill/SKILL.md`를 커밋하고, 각 개발자가 설치 스크립트를 실행하면 됩니다. 사내 비공개 자료나 자격 증명은 주간 조사에 포함하지 않습니다.
