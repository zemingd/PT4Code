arr = []
a = []
n = gets.to_i
5.times do |i|
  arr << gets.to_i
  i == 0 ? a << n : a << 0
end
min = arr.min
amari = n % min
if amari != 0
  x = n / min + 1
else
  x = n / min
end
x = x + 4
puts x
