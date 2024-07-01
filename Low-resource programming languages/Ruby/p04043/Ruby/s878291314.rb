array = gets.split.map(&:to_i)
if array.count(5) == 2 && array.count(7) == 1
  puts 'YES'
else
  puts 'NO'
end
