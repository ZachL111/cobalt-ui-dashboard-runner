# Field Notes

The useful part of this repository is the small rule set around view drift and layout risk.

The domain cases cover `view drift`, `state pressure`, `layout risk`, and `interaction cost`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

The widest spread is between `interaction cost` and `view drift`, so those are the first two cases I would preserve during a refactor.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
