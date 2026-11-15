# Task 5 · Static members

One AtomicLong counter in Ticket assigns IDs across all gates in a single JVM. A facility tracks occupancy independently. A global live count, if required, would need synchronization shared by those facilities. Static constants are assigned at declaration; a static initializer is suitable for a one-time setup of an immutable pricing table. A static helper such as billableHours uses only its input.

Java passes the reference value by value. Enter returns a reference to the same immutable ticket stored in the grid. Exit clears the grid reference. After the operator, caller and other collections stop referencing it, it becomes eligible for GC. The collection amount is tracked independently.

A per-facility counter starts at one for both gates, so use (gate ID, counter) as a composite ID if independent counters are required. A JVM-wide counter occupies O(1) space, regional counters O(k) across k facilities, and stored IDs O(n) across n tickets in either approach. For restart or multiple JVMs, use a durable shared sequence or unique facility prefix plus a persisted local counter.
