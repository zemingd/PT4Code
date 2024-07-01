S, T = gets.split.map(&:strip)
A, B = gets.split.map(&:to_i)
U = gets.strip

puts (U == S ? [A - 1, B] : [A, B - 1]).join(' ')