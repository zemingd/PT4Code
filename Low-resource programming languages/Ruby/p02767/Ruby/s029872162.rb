n = gets.to_i
x = gets.split.map(&:to_i)
min = x.inject(:+)**2
(1..100).each do |i|
  sum = 0
  x.each do |j|
	  sum += (j - i)**2
  end
  min = sum if sum < min
end
puts min