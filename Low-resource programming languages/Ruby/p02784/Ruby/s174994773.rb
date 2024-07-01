h, n = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = a.inject(:+)
if sum >= h
  puts 'Yes'
else
  puts 'No'
end