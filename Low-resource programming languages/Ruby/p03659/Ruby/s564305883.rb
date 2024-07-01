n = gets.to_i
a = gets.split.map(&:to_i)
sum = a.inject(:+) - a[0]
sum2 = a[0]
min = (sum2 - sum).abs
if n > 2
	(1...n-1).each do |i|
      sum -= a[i]
      sum2 += a[i]
      diff = (sum - sum2).abs
      min = diff if diff < min
	end
else
  	sum = a[-1]
  	sum2 = a[0]
	min = (sum2 - sum).abs
end
puts min