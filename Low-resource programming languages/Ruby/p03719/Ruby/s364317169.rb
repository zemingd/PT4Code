A, B, C = gets.split.map(&:to_i)

if (A..B).include?(C)
  puts 'Yes'
else
  puts 'No'
end
