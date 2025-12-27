# DGK-Formal-Specs

Formal specification, model checking, and attestation layer for the DGK ecosystem.

This repository contains **non-executable, machine-checkable proofs** that the
DGK governance substrate cannot enter an unsafe execution state.

Nothing here runs in production.
Everything here proves correctness.

## Scope
- TLA+ specifications for pre-execution governance
- Semantic invariant definitions (policy → physics)
- Remote attestation contracts
- Proof artifacts and model-checker outputs

## Trust Model
Executable code is untrusted.
Mathematical proof is the root of trust.

## Relationship to DGK-IES
DGK-IES enforces.
DGK-Formal-Specs proves enforcement is complete and non-bypassable.
