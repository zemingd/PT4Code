a, b = gets.chomp.split
n = (a + b).to_f
r = Math.sqrt(n)
(r ** 2 == n) && (a != '1' && b != '1') ? puts('Yes') : puts('No')