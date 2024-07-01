arr = gets.split.map(&:to_i)
i = 0; j = 0
arr.each do |a|
  i += 1 if a == 5
  j += 1 if a == 7
end
if i == 2 && j == 1 
  puts 'YES'
else
  puts 'NO'
end