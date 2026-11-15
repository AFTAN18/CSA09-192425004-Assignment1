$ErrorActionPreference = 'Stop'
Push-Location (Split-Path -Parent $PSScriptRoot)
try {
    New-Item -ItemType Directory -Force build | Out-Null
    foreach ($exercise in @(
        @{Source='Task03/src/ParkingFacility.java'; Main='ParkingFacility'; Expected='Task03/tests/expected.txt'},
        @{Source='Task08/java8/FeeDemo.java'; Main='FeeDemo'; Expected='Task08/tests/expected.txt'}
    )) {
        javac -d build $exercise.Source
        if ($LASTEXITCODE) { throw "Compilation failed for $($exercise.Main)" }
        $output = java -cp build $exercise.Main
        if ($LASTEXITCODE -or (Compare-Object (Get-Content $exercise.Expected) $output -SyncWindow 0)) {
            throw "Output mismatch for $($exercise.Main)"
        }
        $output
    }
    $sources = @(Get-ChildItem Task11/src,Task12/src -Filter *.java -Recurse | ForEach-Object FullName)
    javac -d build $sources
    if ($LASTEXITCODE) { throw 'Packaged compilation failed' }
    foreach ($main in 'parking.app.ParkingTest','parking.app.AdaptationTest') {
        java -cp build $main
        if ($LASTEXITCODE) { throw "Verification failed for $main" }
    }
} finally {
    Pop-Location
}
