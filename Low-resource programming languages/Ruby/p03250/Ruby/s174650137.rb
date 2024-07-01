A, B, C = gets.chomp.split.map(&:to_i)

a, b, c = [A, B, C].sort.reverse

puts eval("#{a}#{b} + #{c}")
