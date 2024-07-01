n, m = gets.chomp.split(" ").map(&:to_i)
even = Array.new(n, 2).repeated_combination(2).size - n
odd = Array.new(m, 1).repeated_combination(2).size - m
print even + odd