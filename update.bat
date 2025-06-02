git add .

git commit -m "Update: $(powershell -Command "& { (git diff --name-status | ForEach-Object { $parts = $_ -split \"\t\"; switch ($parts[0]) { 'A' { \"added $($parts[1])\" }; 'M' { \"updated $($parts[1])\" }; 'D' { \"deleted $($parts[1])\" }; default { \"$($parts[0]) $($parts[1])\" } } }) -join ', ' }")"

git push origin main