num = gets.to_i
arr = gets.split.map(&:to_i).sort
ans = 10000000000000000000000000000000000000000000
now = 0
tmp = 0
arr[-1].times do |i|
	num.times do |j|
		tmp = (arr[j]-(i+1)) **2
		now += tmp
	end
	if now < ans
		ans = now
	end
  	now = 0
end

p ans