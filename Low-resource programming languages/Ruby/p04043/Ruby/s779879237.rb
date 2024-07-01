haiku = gets.chomp.split.map(&:to_i)
haiku.sort!
if haiku == [5, 5, 7] then
  puts 'YES'
else
  puts 'NO'
end