name: "✨ Feature Request"
description: Suggest an enhancement or improvement
title: "[Feature] <short description>"
labels: [enhancement]
body:
  - type: markdown
    attributes:
      value: |
        Help us improve by suggesting a new feature or enhancement!

  - type: input
    id: motivation
    attributes:
      label: What problem does this solve?
      placeholder: e.g., I'd like to configure upstream DNS dynamically...
    validations:
      required: true

  - type: textarea
    id: proposal
    attributes:
      label: Proposed Solution
      placeholder: Describe the feature you’d like to see
    validations:
      required: true

  - type: textarea
    id: alternatives
    attributes:
      label: Alternatives Considered
      placeholder: If applicable, describe any alternatives you've tried
    validations:
      required: false
