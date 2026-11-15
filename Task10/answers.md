# Task 10 · Encapsulation

parking.model contains Vehicle, Pass and Ticket, parking.service owns Facility and its occupancy state, and parking.app runs tests and demonstrations. Private fields protect array contents and identity. Public accessors expose immutable ticket values and the service's operations. Protected pricing hooks allow vehicle subtypes to specialize. Package-private helpers are useful for implementation collaborators. The program validates coordinates at the service boundary and rejects negative duration, nonpositive floor sizes and invalid charging use. No setter exposes the occupancy grid or an unvalidated ticket update.

Collections such as Map<String, Long> box long values. Use numeric comparison after checked unboxing or equals for wrapped values. Integer == compares reference identity and can give surprising results outside cached values. Unboxing null throws.

With public fields, every caller must validate bounds and coordinate consistency before mutating a slot. Bounds checks are O(1) in either design, while c mutating call sites can duplicate O(c) validation code and allow a caller to bypass it. The encapsulated version centralizes checks and uses O(1) auxiliary space per update.
