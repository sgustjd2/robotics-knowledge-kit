---
name: robotics-knowledge
description: Research, organize, and update robotics engineering knowledge for ROS 2, robot vision, simulation, digital twins, robot learning, and LLM-enabled robotics.
---

# Robotics Knowledge

Use this skill to research, explain, organize, or keep a shared robotics engineering knowledge base current.

## Find the knowledge base

Look for `robotics-wiki/INDEX.md` in the current repository or task workspace. If it is absent, check `C:\workspace\robotics-knowledge-kit\robotics-wiki\INDEX.md`. If neither location exists, ask the user where the team knowledge base lives before creating a second one. Read the index, the relevant category page, and source registry before editing. Keep documentation in Korean unless the team repository already uses another language.

## Research workflow

- Start from the user's curriculum and target robot/task. Map findings to a category and learning stage.
- Search official documentation, upstream GitHub repositories/releases, research papers, and Hugging Face model/dataset cards. Use engineering blogs and community posts to discover examples, then label them as community evidence and verify technical claims against primary sources.
- Record a stable direct URL, publisher, publication/release date when available, date checked, relevant version/ROS distribution/hardware, license where applicable, and the practical consequence.
- Separate confirmed facts from interpretation. Mark compatibility and release details as time-sensitive; never turn an unverified claim into a recommendation.
- For GitHub projects, inspect releases/tags, activity, supported environments, CI, license, documentation, and issue health. Stars alone do not establish quality.
- For Hugging Face resources, inspect model/dataset cards, dataset provenance, license, evaluation setup, hardware needs, and code links.

## Organize

Use the categories in `robotics-wiki/INDEX.md`: ROS 2/control, vision/sensors, simulation/digital twin, robot learning/LLM, and developer tools/operations. Add a new category only when a recurring topic does not fit. Put durable concepts in the category page and dated changes in `robotics-wiki/weekly/YYYY-Www.md`; update the source registry when a source is newly adopted or its status changes.

Keep the learning path coherent: development foundations → coordinates and robot description → ROS 2/control → perception → navigation/manipulation → simulation/digital twin → learning and task planning → sim-to-real/deployment. Adapt the path to the team's actual platform.

## Weekly update

When asked for a weekly update or when a scheduled run starts:

1. Read the latest weekly note and compare source release dates/activity since that check.
2. Survey official sources and upstream projects by category. Search GitHub, technical blogs, papers, and Hugging Face for meaningful new projects, models, datasets, releases, and tutorials.
3. Add only material changes. Include dates, versions, direct source links, relevance, and confidence. Keep community claims separate from verified facts.
4. Correct outdated guidance in place and explain the correction in the dated note. Update index/source links if needed.
5. If nothing material changed, record “변경 없음” and which sources were checked. Do not pad the report.

Do not expose company secrets, credentials, private datasets, or internal robot network details to public services. Check licenses and data/model cards before recommending adoption. For LLM-controlled robots, keep model outputs within validated schemas and a bounded action interface; do not recommend direct unrestricted actuator control.

## Knowledge base layout

- `robotics-wiki/INDEX.md`: navigation and evidence rules
- `robotics-wiki/curriculum/learning-path.md`: staged learning map
- `robotics-wiki/categories/`: durable topic references
- `robotics-wiki/sources/registry.md`: canonical sources and review notes
- `robotics-wiki/weekly/`: dated update records
