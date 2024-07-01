a = gets.to_i
b = gets.to_i if a != b
if a === 1 && b === 2
  puts 3
elsif a === 1 && b === 3
  puts 2
elsif a === 2 && b === 1
  puts 3
elsif a === 2 && b === 3
  puts 1
elsif a === 3 && b === 1
  puts 2
else a === 3 && b === 2
  puts 1
end

