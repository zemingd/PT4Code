# /bin/ruby
a, b = gets.split(' ').map do |e|
  e.to_i
end
p a, b

x = 0
if a > b
  x = a - b
else
  x = b - a
end

if x % 2 == 0
  puts (a - (x/2)).abs
else
  puts "IMPOSSIBLE"
end
