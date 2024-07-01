x = gets.chomp.gsub(' ', '').to_i
if x % 4 == 0
  puts 'YES'
else
  puts 'NO'
end