h, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
if h <= a.sum
  puts 'Yes'
else
  puts 'No'
end