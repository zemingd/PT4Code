arr = []
a = []
n = gets.to_i
5.times do |i|
  arr << gets.to_i
  i == 0 ? a << n : a << 0
end
min = arr.min
index = arr.index(min)
puts "index : #{index}"
amari = n % min
amari != 0 ? x = n / min : x = n / min + 1
puts "amari : #{amari}"
puts "x : #{x}"
x = x + 5
puts x
