A, B = gets.chomp.split.map(&:to_f)

a0 = (A * 100 / 8).ceil
a1 = (A + 1) * 100 / 8
b0 = (B * 100 / 10).ceil
b1 = (B + 1) * 100 / 10

m = [a0, b0].max

m = -1 unless m < a1 && m < b1

puts m
