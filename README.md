# cobalt-ui-dashboard-runner

`cobalt-ui-dashboard-runner` explores frontend apps with a small Lua codebase and local fixtures. The technical goal is to develop a Lua command-oriented project for dashboard scenarios with deny and allow fixtures, explainable decision traces, and no production deployment claims.

## Why This Exists

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Cobalt UI Dashboard Runner Review Notes

Start with `interaction cost` and `view drift`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for view drift and state pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/cobalt-ui-dashboard-walkthrough.md` walks through the case spread.
- The Lua code includes a review path for `interaction cost` and `view drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Lua code keeps the review rule close to the tests.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Roadmap

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
