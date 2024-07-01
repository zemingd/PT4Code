a, b, c = gets.split.map(&:to_i)
(Math.sqrt(a) + Math.sqrt(b)).to_r < Math.sqrt(c).to_r ? puts("Yes") : puts("No")
