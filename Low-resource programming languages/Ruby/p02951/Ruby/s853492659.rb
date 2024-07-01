a, b, c = gets.chomp.split(" ").map(&:to_i)

result = c - (a - b)

if result < 0
  puts 0
else
  puts result
end