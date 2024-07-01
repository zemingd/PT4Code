n = gets.to_i

x = []

5.times do |i|
  x << gets.to_i
end
if n == x.min
  puts 5
else
  puts 5 + n / x.min
end