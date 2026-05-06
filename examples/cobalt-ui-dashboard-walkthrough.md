# Cobalt UI Dashboard Runner Walkthrough

This note is the quickest way to read the extra review model in `cobalt-ui-dashboard-runner`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | view drift | 178 | ship |
| stress | state pressure | 208 | ship |
| edge | layout risk | 191 | ship |
| recovery | interaction cost | 229 | ship |
| stale | view drift | 208 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

If `baseline` becomes less cautious without a clear reason, I would inspect the drag input first.
