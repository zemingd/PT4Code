_n=gets.to_i
ary=gets.split.map(&:to_i)
m=ary.select{|a|a.even?}
puts m.all?{|m|(m%3).zero?||(m%5).zero?}?'APPROVED':'DENIED'