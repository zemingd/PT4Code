def maxtime(x); (x+9)/10*10; end

ary = 5.times.map{gets.to_i}
sum = 0

ary.each do |i|
  sum += maxtime(i)
end

buf = ary.map{|i| maxtime(i) - i}
puts sum - buf.max
