name: "🐞 Bug Report"
description: Report an issue or unexpected behavior
title: "[Bug] <short description>"
labels: [bug]
body:
  - type: markdown
    attributes:
      value: |
        Please describe the problem in detail so we can reproduce and fix it.

  - type: input
    id: environment
    attributes:
      label: Environment
      description: OS, Docker version, etc.
      placeholder: e.g., macOS 14.4, Docker 24.0.5
    validations:
      required: true

  - type: textarea
    id: steps
    attributes:
      label: Steps to Reproduce
      description: Tell us how to reproduce the issue.
      placeholder: |
        1. Run `docker build ...`
        2. Start container with ...
        3. Observe error
    validations:
      required: true

  - type: textarea
    id: expected
    attributes:
      label: Expected Behavior
      placeholder: What did you expect to happen?
    validations:
      required: true

  - type: textarea
    id: logs
    attributes:
      label: Logs or Output
      placeholder: Paste any relevant logs or error messages here
    validations:
      required: false
