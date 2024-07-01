a, b, c = gets.split.map(&:to_i)
(Math.sqrt(a) + Math.sqrt(b)).rationalize < Math.sqrt(c).rationalize ? puts("Yes") : puts("No")
