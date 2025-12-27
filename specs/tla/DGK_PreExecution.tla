----------------------------- MODULE DGK_PreExecution -----------------------------

EXTENDS Naturals, Sequences

VARIABLES
    system_state,
    proposed_action,
    invariant_set,
    verdict

States == {
    ""BOOT"",
    ""KERNEL_READY"",
    ""CHECKING"",
    ""EXECUTE"",
    ""DENY""
}

Init ==
    system_state = ""BOOT"" /\
    verdict = ""UNDECIDED""

InvariantSatisfied(action) ==
    \A inv \in invariant_set : inv(action) = TRUE

Next ==
    \/ /\ system_state = ""BOOT""
       /\ system_state' = ""KERNEL_READY""

    \/ /\ system_state = ""KERNEL_READY""
       /\ proposed_action # NULL
       /\ system_state' = ""CHECKING""

    \/ /\ system_state = ""CHECKING""
       /\ IF InvariantSatisfied(proposed_action)
             THEN system_state' = ""EXECUTE""
             ELSE system_state' = ""DENY""
       /\ verdict' = system_state'

Safety ==
    system_state = ""EXECUTE"" => InvariantSatisfied(proposed_action)

=============================================================================
