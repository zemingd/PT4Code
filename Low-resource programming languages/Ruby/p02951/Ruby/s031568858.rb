a, b, c = gets.split(" ").map(&:to_i)
if (c - (a-b)).negative?
  puts 0
else
  puts c - (a-b)
end