# Task 7 · Overriding

Car and TwoWheeler override ratePerHour because their base pricing differs. ElectricCar inherits the car base rate and implements Chargeable. The additional duration-based hook allows a time-aware tariff. Java overriding needs the same parameter signature, a compatible return type (covariant for reference types) and equal or wider access. An overriding method cannot widen checked exceptions. The Override annotation makes signature mismatches compile errors.

Registration is final because changing an identity inside a set breaks lookup. equals and hashCode are final on the integrated Vehicle class to keep symmetry across subclasses. Two normalized equal registrations compare equal and use the same String hash. toString prints the type and registration for diagnostics. The e-bike is final because it is the concrete flat tariff exemplar.

A switch on an enum delegates by case. A dense indexed jump table can be O(1), sparse lookup depends on compilation, and a sequential condition chain has O(k) worst-case tests for k kinds. Dynamic dispatch is modeled as O(1). Both use O(1) auxiliary space per fixed-rate call and O(k) type-specific code. The enum-switch design updates the type declaration and the pricing implementation, possibly in one class. A new subclass localizes pricing, and the application still needs a route that constructs it.
