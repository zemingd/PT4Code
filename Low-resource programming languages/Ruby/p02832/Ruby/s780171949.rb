num = gets.to_i
arr = gets.split.map(&:to_i)
cor = 1
ans = 0
arr2 =arr.sort
if arr2[0] == 1
	num.times do |i|
		if arr[i] == cor
			cor += 1
		else
			ans += 1
		end
	end
	p ans
else
	p -1
end