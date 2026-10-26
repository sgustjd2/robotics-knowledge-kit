---
name: robotics-engineering
description: Design architectures and implement robotics software grounded in the team robotics knowledge base. Use for ROS 2, robot vision, simulation, digital twins, controls, and robot-learning integration work.
---

# Robotics Engineering

Use this skill for robotics software architecture and implementation. Ground technology choices in the shared knowledge base; adapt its guidance to the repository, robot, and task at hand.

## Retrieve only what the task needs

1. Find `robotics-wiki/INDEX.md` in the current repository; otherwise use `C:\workspace\robotics-knowledge-kit\robotics-wiki\INDEX.md`.
2. Read the index and only the relevant category page(s). Normally read no more than three. Read the learning path for sequencing/training design, the source registry for evaluating a tool or version, and weekly notes only when freshness matters.
3. If neither location exists, ask where the knowledge base is. Never load the whole wiki by default.

## Architecture work

- Establish the robot/task, runtime environment, ROS 2 distribution, hardware/simulator, latency and reliability needs, and safety boundaries from the repository or request. Mark missing constraints as assumptions.
- Show the smallest useful system shape: components, interfaces/data flow, and key dependencies. For ROS 2, specify relevant topics/services/actions, TF frames, QoS, clocks, and control rates; include only what affects the design.
- Cover sim/real boundaries, observability, failure behavior, and safe degraded states where relevant. Explain material trade-offs briefly.
- For physical deployment, read the validation/safety/security category and distinguish ordinary ROS software limits from independently validated safety-rated functions.
- Check version compatibility and licenses against the knowledge base. Browse current official/upstream sources only when a decision is time-sensitive or the local evidence is insufficient; cite the direct sources used.

## Implementation work

- Inspect the existing code and follow its language, package layout, and interfaces. Make the smallest complete change that satisfies the request.
- Preserve boundaries between perception, planning, control, and hardware adapters. Validate units, frames, timestamps, limits, and lifecycle transitions where they cross those boundaries.
- Keep LLM/VLM outputs behind validated schemas and bounded tools; never connect model text directly to actuator commands. Enforce robot-side limits and safe stop behavior independently of the model.
- Report what changed, the relevant compatibility assumptions, and any checks actually performed. Do not claim a simulation or hardware behavior was verified unless it was.

Keep answers concise: state decisions and assumptions, and omit background the user did not need for the task.
