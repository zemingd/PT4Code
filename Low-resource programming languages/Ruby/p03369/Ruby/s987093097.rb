input = gets.chomp
count = 0

count += 1 if input[0] == "o"
count += 1 if input[1] == "o"
count += 1 if input[2] == "o"

puts 700 + 100 * count