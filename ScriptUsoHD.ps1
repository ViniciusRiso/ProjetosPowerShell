# Parameters
param([String]$dir = "C:\Users\vinic\Downloads")

# Function
function Get-Dir-Info($dir) {
    $results = Get-ChildItem $dir -Recurse | Measure-Object -Property Length -Sum
    return [math]::Round(($results.Sum / 1GB), 2)
}

Get-dir-info $dir 
get-dir-info C:\Users\vinic\Documents