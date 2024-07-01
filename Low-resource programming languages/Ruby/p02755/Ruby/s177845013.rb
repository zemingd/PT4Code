A, B = gets.chomp.split.map(&:to_f)

# x * 0.08 = A
# x * 0.10 = B
# B < A

a = A * 100 / 8
b = B * 100 / 10

x = a >= b ? a.ceil : -1

puts x
