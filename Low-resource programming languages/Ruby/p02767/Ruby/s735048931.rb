n = gets.to_i
x = gets.chomp.split(' ').map(&:to_i)

sum = 0
ans = []

(1..x.max).each do |np|
	x.each do |j|
		sum += (j - np) **2
	end
	ans << sum
	sum = 0
end

#最小値を出力
puts ans.min