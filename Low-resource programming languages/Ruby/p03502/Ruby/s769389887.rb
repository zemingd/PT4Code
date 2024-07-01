x = gets
xx = x.to_i
xxx = x.chars.map(&:to_i)
# p x
# p xx.inject(:+)
if xx % xxx.inject(:+) == 0
  puts "Yes"
else
  puts "No"
end