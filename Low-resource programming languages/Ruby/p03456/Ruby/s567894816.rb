a, b = gets.chomp.split
n = (a + b).to_f
r = Math.sqrt(n)
(r ** 2 == n) ? puts('Yes') : puts('No')