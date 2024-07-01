A, B, C = gets.split.map(&:to_i)

if [A, B, C].uniq.size == 2
  puts 'Yes'
else
  puts 'No'
end
