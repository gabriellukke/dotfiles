# AGENTS

This repository contains my personal development environment.

## Goals

- Keep the configuration minimal.
- Prefer native features over plugins.
- Explain architectural decisions before making large changes.
- Never rewrite unrelated files.
- Prefer incremental commits.
- Preserve backwards compatibility whenever possible.

## Workflow

Before changing anything:

1. Understand the current configuration.
2. Explain why the change is necessary.
3. Modify the smallest amount of code possible.
4. Ask before introducing new dependencies.

## Neovim

There are two configurations.

- nvim-custom
- nvim-lazy

Do not mix them.

Changes requested for one configuration should never affect the other.

## Git

Never rewrite history.

Prefer multiple small commits over one huge commit.
