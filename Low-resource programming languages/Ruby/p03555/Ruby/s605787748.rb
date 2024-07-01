first_line = STDIN.gets.strip
second_line = STDIN.gets.strip

second_line.reverse!

if (first_line == second_line)
  puts 'YES'
else
  puts 'NO'
end