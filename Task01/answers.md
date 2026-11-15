# Task 1 · Problem analysis

Students, staff and visitors present vehicle registrations and any pass at the gate. The operator requests entry or exit, records charging use and checks collections. Entry consumes registration, type, entry time and charging request. It produces a ticket with a unique ID and an allocated floor/position, or a rejection. Exit takes the ticket reference, exit time and whole kWh and returns the fee and release confirmation.

| Candidate | Responsibility |
|---|---|
| Vehicle | Owns registration identity and supplies the hourly pricing behavior. |
| Facility | Owns the occupancy grid and guarantees exclusive allocation and valid release. |
| Ticket | Binds one entry event to the vehicle, coordinate and time. |
| Pass | Decides whether the customer is entitled to free parking at entry. |
| Slot | Holds occupancy and the charging capability so allocation can enforce eligibility. |
| Operator | Triggers gate operations. A separate operator object is unnecessary without authentication requirements. |

One vehicle has at most one active ticket per facility. A slot holds at most one ticket. Release requires its active ticket and an exit at or after entry. IDs are unique during the running process. An invalid or failed request changes no occupancy. Charging is billed separately and requires a charging slot. Assume zero-based indices, local campus timestamps, hourly rounding up, zero charge at zero duration and in-memory data. Lost tickets and durable IDs would require persistent storage.

With parallel arrays use the same occupied index for regNo, type and entryTime. Scan indices and return the first whose registration matches, or report absent. For n vehicles both a plain object array and parallel arrays take O(n) worst-case registration comparisons and O(1) auxiliary space. With registration length L, comparison can cost O(L). A keyed index adds O(n) space and gives expected constant lookup with bounded-length keys. Fixed fields cost O(1) space per vehicle in either layout. A new attribute adds one field to the class or one synchronized array with changes to insertion, deletion and reordering. Both add O(n) total field storage, and an object localizes the invariant.
