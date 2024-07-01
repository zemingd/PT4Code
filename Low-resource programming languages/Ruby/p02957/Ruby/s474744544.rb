a, b = gets.split.map(&:to_i)
min = [a, b].min
max = [a, b].max

if (b - a).even?
  puts (max - min) / 2 + min
else
  puts "IMPOSSIBLE"
end