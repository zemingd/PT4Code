input = gets.split(" ").map(&:to_i)

if input[0] >= 13
  puts input[1]
elsif input[0] >= 6
  puts input[1] / 2
else
  puts 0
end