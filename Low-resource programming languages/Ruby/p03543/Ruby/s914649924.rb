n = $stdin.read.split("")
puts ((n[0] == n[1]) && (n[1] == n[2])) || ((n[1] == n[2]) && (n[2] == n[3])) ? "YES" : "NO"