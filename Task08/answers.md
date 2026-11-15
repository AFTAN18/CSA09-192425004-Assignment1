# Task 8 · Polymorphism

The compiler selects calculateFee(int) for an integer argument and calculateFee(LocalDateTime, LocalDateTime) for two timestamps. In FeeDemo, the declared array component and loop variable type is Vehicle. For TN03C3 the runtime class is ElectricCar, which inherits Car.ratePerHour. calculateFee bills three hours at Rs 30. The Chargeable check adds 10 × Rs 12, totaling Rs 210. equals compares registrations across Vehicle subtypes, so two objects representing TN02B2 are equal. This is appropriate when one normalized registration identifies one vehicle in the modeled facility.

An instanceof implementation must check ElectricCar before Car because an electric car also satisfies the car test. A chain of k candidate types has O(k) worst-case checks and O(k) centralized branches. A virtual call uses modeled O(1) dispatch and O(1) call space. Baseline pricing avoids a type chain, and the capability check is for optional charging.

The original snippet uses the Java 16+ instanceof binding in main. The Java 8 variant mechanically uses an explicit cast at that line. Expected output is in tests/expected.txt.
