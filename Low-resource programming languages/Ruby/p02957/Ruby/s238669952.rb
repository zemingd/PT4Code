# /bin/ruby
a, b = gets.split(' ').map do |e|
  e.to_i
end

x = 0
if a > b
  x = a - b
else
  x = b - a
end

if x % 2 == 0
  puts x / 2
else
  puts "IMPOSSIBLE"
end
