rgb = gets.chomp.strip.split.join.to_i

if rgb % 4 == 0
  puts 'YES'
else
  puts 'NO'
end
