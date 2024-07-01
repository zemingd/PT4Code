h, n = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)

if (h <= ary.inject(:+))
  puts 'Yes'
else
  puts 'No'
end
