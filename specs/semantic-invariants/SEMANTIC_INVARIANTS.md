# Semantic Invariants

Semantic invariants map human policy to enforceable physical constraints.

## Core Invariants

### NO_EXTERNAL_IO
Policy: No network or external communication  
Enforcement: NIC disabled, DMA blocked

### CODE_IMMUTABLE
Policy: No self-modifying code  
Enforcement: W^X memory, signed pages only

### NO_PRIV_ESC
Policy: No privilege escalation  
Enforcement: Ring transition locks

### NO_UNVERIFIED_EXEC
Policy: All actions must be invariant-checked  
Enforcement: Pre-execution gate only
