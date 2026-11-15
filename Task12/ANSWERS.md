# Task 12 · Adaptation

## A. Impact analysis

Add an e-bike with a flat Rs 15 rate (assumed because the prompt supplies no amount), a van, a one-day visitor entitlement and configuration for five unequal floors. The fee hook, pass eligibility and boot configuration are the affected responsibilities. A rectangular array would require padding or a migration. The Facility already consumes a jagged shape, so the tested array logic works with sizes 2, 3, 4, 5 and 6.

## B. Evaluation

The base timestamp quote is factored into Vehicle, and the hourly rates live with each subclass. This is straightforward for the three original types. Timestamp-based tariff extensions need the quote hook plus a known time rule. The minutes-only overload in the base class is supplied for fixed-hour tariffs and lacks the wall-clock information the van needs. The service always uses the timestamp path.

## C. Adaptation

Extend Vehicle with the EBike and DeliveryVan subclasses and implement Pass as VisitorDayPass. A visitor pass is assumed prepaid and covers entries on its named calendar date, with parking validated at entry. The e-bike fee is per stay. Price each started van hour according to the start of that hour, with peak interval [09:00, 17:00). This defines the crossing-boundary behavior explicitly. If the policy requires prorating by minute, the tariff needs different rounding rules. A flat fee is O(1) time and an h-hour van stay takes O(h) time and O(1) extra space. Grouping complete days and counting intersections of hourly starts with peak ranges can reduce the timed quote work.

## D. Defence

The extension adds three model classes and an executable test without edits to the baseline Vehicle, Ticket, Pass or Facility sources. An application factory or menu would register new constructor choices. The regular allocation and exit contracts remain exercised by the original test suite. The added test asserts a flat e-bike price, both peak bounds, a crossing, valid and expired passes and the final regular slot on the fifth floor. See evidence/tests.txt. The design centralizes occupancy while distributing tariff behavior. A composable policy would help if rates must be swapped dynamically across fleets.
