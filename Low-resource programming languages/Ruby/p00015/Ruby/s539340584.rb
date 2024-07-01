n = gets.to_i()
include Math

n.times do
  a = gets.to_i()
  b = gets.to_i()

  puts ( a + b >= 10 ** 80 ? "overflow" : a + b)
end