n = gets.to_i
s = n.times.map{gets.to_i}
sum = s.inject(:+)
s.select!{|num|num%10 != 0}
if sum%10 != 0
  puts sum
elsif s.empty?
  puts 0
else
  puts sum-s.min
end