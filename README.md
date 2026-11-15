# CSA09 Assignment 1 · Campus smart parking

Aftan Faiz · Register number 192425004 · CO1

Verified with the following local runtime.

```text
openjdk version "1.8.0_504"
OpenJDK Runtime Environment (Temurin)(build 1.8.0_504-b01)
OpenJDK 64-Bit Server VM (Temurin)(build 25.504-b01, mixed mode)
javac 1.8.0_504
```

From the repository root in PowerShell, run:

```powershell
pwsh -NoProfile -File scripts/check.ps1
```

The check compiles the standalone templates and the packaged system into build/. Each uses hard-coded or generated inputs. Task03 fills three slots, tries a fourth entry, releases and reallocates. FeeDemo evaluates a 130-minute stay for three vehicle types and a 10 kWh charging session. ParkingTest fills 20-, 150- and 500-slot layouts and checks fees, invalid operations and daily collections. AdaptationTest supplies five unequal floors and timed van entries and compares visitor-pass dates. Run the lookup experiment after the check with `java -cp build parking.app.TicketLookupBenchmark`. All automated assertions passed locally. The default check uses the Java 8 equivalent for Task08. With Java 17 on PATH use `javac -d build Task08/source/FeeDemo.java` and `java -cp build FeeDemo` to reproduce the independently verified original syntax.

| Task | Evidence |
|---|---|
| [01](Task01/ANSWERS.md) | Actors and parking invariants |
| [02](Task02/ANSWERS.md) | Types, jagged layout and rounding |
| [03](Task03/ANSWERS.md) | Pseudocode and [six matching output lines](Task03/evidence/run.txt) |
| [04](Task04/ANSWERS.md) | Construction and chaining in Task11 Ticket |
| [05](Task05/ANSWERS.md) | Static IDs and lifecycle, tested across two gates |
| [06](Task06/ANSWERS.md) | UML and construction trace |
| [07](Task07/ANSWERS.md) | Fee and Object method overrides |
| [08](Task08/ANSWERS.md) | [Four matching output lines](Task08/evidence/java8-run.txt) |
| [09](Task09/ANSWERS.md) | Abstract Vehicle and Chargeable |
| [10](Task10/ANSWERS.md) | Packages and data access |
| [11](Task11/ANSWERS.md) | [Integration results](Task11/evidence/tests.txt), [raw measurements](Task11/evidence/lookup.csv), [medians](Task11/evidence/medians.md) |
| [12](Task12/ANSWERS.md) | [Eight adaptation checks](Task12/evidence/tests.txt) |

See the [assignment report](report/AssignmentReport.md). Evidence consists of captured console output and CSV data. Execution PNGs are linked in each task README. This demonstration stores facility state in memory and evaluates tariffs in campus local time.


See the [evidence audit](EVIDENCE_AUDIT.md) for screenshot filenames, programming results and outstanding requirements.
