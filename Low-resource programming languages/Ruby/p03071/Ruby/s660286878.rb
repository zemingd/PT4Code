b = gets.split.map(&:to_i)

max_b = b.max

if b.count(max_b) == 2
  puts 2 * max_b
else
  puts max_b + (max_b - 1)
end
