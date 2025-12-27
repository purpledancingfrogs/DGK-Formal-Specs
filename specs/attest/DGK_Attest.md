# DGK Attestation Contract

This document defines the remote attestation guarantees required
to trust a running DGK kernel.

## Attestation Claims
1. Secure boot chain integrity
2. Kernel hash equality
3. Invariant bundle hash equality
4. Hardware root of trust signature

## Required Properties
- Non-forgeable
- Replay-resistant
- Hardware-backed (TPM / HSM)

## Verification Rule
If any claim fails, the system is considered non-governed and unsafe.
