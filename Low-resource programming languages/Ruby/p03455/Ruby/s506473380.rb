numbers = STDIN.gets.split(" ")
puts ((numbers[0].to_i * numbers[1].to_i) % 2 == 0)? 'Even' : 'Odd'
