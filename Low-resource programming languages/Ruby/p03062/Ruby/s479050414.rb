_ = gets.to_i
a = gets.split.map(&:to_i)
num_negative = a.count{_1<0}
if num_negative.even?
  puts a.map{|i| i<0 ? -i : i}.sum
else
  a = a.map{|i| i<0 ? -i : i}
  puts a.sum - a.min*2
end