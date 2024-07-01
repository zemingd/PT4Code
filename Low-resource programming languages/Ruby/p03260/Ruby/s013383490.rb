a, b = gets.chomp.split.map(&:to_i)
(a * b).odd? ? puts('Yes') : puts('No')