a, b, c = gets.split.map(&:to_i)
(Math.sqrt(a).rationalize + Math.sqrt(b).rationalize).to_f < Math.sqrt(c) ? puts("Yes") : puts("No")

