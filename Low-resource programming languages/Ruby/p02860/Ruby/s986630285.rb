n = (gets.to_i / 2)
s = gets.chomp
s.slice(0, n) == s.slice(n, n * 2) ? puts("Yes") : puts("No")