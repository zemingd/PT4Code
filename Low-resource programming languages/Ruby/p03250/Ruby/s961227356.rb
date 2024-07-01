a, b, c = gets.chomp.split.map(&:to_i)

ar = [a, b, c].sort

puts ar[2] * 10 + ar[1] + ar[0]
