$diffs = git diff --name-status HEAD~1 HEAD

$filesByType = @{
    'D' = @()
    'M' = @()
    'A' = @()
}

foreach ($line in $diffs) {
    if ($line -match "^(.)\s+(.+)$") {
        $status = $matches[1]
        $file = $matches[2]
        if ($filesByType.ContainsKey($status)) {
            $filesByType[$status] += $file
        }
    }
}

$msgParts = @()
if ($filesByType['D'].Count -gt 0) { $msgParts += "deleted: " + ($filesByType['D'] -join ", ") }
if ($filesByType['M'].Count -gt 0) { $msgParts += "edited: " + ($filesByType['M'] -join ", ") }
if ($filesByType['A'].Count -gt 0) { $msgParts += "added: " + ($filesByType['A'] -join ", ") }

$msg = "Update: " + ($msgParts -join "; ")
$msg = $msg.TrimEnd(';')

Write-Output $msg