# Task 3 · Control logic

```text
ALGORITHM AllocateSlot(vehicle, requiresCharging)
    IF vehicle already has an active ticket THEN RETURN duplicate
    FOR EACH floor in ascending order DO
        FOR EACH slot in ascending order DO
            IF slot occupied OR slot incompatible THEN CONTINUE
            ASSIGN ticket and mark slot occupied
            RETURN ticket
        END FOR
    END FOR
    RETURN no suitable slot
END ALGORITHM

ALGORITHM ComputeFee(entry, exit, rate, eligiblePass, energy)
    IF exit precedes entry OR energy is negative THEN RETURN invalid input
    duration ← elapsed whole minutes
    hours ← duration DIV 60
    IF duration MOD 60 > 0 THEN hours ← hours + 1
    IF eligiblePass THEN parking ← 0
    ELSE parking ← hours × rate
    RETURN parking + energy × charging rate
END ALGORITHM
```

The ceiling separates a completed hour from the start of the next. No daily maximum is stipulated. A capped policy could apply MIN after calculating gross parking, before adding separately billed charging. A direct RETURN stops both search loops, whereas BREAK would leave only the inner loop. CONTINUE skips unusable positions. On exhaustion, the caller can display the full message or offer an alternate facility.

A free-slot stack per floor skips empty floors using their counts. Allocate by finding the first nonempty stack and popping its next slot. Release validates occupancy and pushes the released position. Use separate stacks for incompatible slot types. For F floors of S slots, scan costs O(FS) allocation and O(1) release with O(1) auxiliary space beyond the grid. Stacks cost O(F) allocation and O(1) release with O(FS+F) added space. LIFO changes the within-floor allocation order after a release. A min-heap preserves smallest-index ordering at O(log S) per floor update.
