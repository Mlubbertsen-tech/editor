# generate_commit_msg.ps1

$diffs = git diff --name-status HEAD~1 HEAD

$msgParts = foreach ($line in $diffs) {
    if ($line -match "^(.)\s+(.+)$") {
        $status = $matches[1]
        $file = $matches[2]
        switch ($status) {
            'D' { "deleted $file;" }
            'M' { "edited $file;" }
            'A' { "added $file;" }
            default { "" }
        }
    }
}

$msg = "Update: " + ($msgParts -join " ")
$msg = $msg.TrimEnd(';')

Write-Output $msg
