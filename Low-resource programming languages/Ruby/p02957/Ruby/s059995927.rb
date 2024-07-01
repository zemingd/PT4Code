a, b = gets.chomp.split.map(&:to_i)

d = b - a

if d.even?
  puts a + d / 2
else
  puts "IMPOSSIBLE"
end