a, b, = gets.split.map(&:to_i)
num = (a >= b ? a : b)

puts num.to_s * num