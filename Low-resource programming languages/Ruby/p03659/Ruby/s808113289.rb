n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = a.inject(:+)
sa = 1000000000
count  = 0
a.each_with_index do |i,j|
	count += i
  	ans -= count
  	if j != n - 1
  		sa = [sa,(count- ans).abs].min
    end
end
puts sa
