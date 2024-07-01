h,_ = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
sum = a.inject(:+)
if h - sum > 0
  puts 'No'
else
  puts 'Yes'
end