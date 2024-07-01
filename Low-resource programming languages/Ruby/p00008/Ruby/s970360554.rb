def getIntegers(sum)
	cnt = 0
	[0,1,2,3,4,5,6,7,8,9].repeated_permutation(4) do |a , b , c , d|
		if (a + b + c + d) == sum
			cnt += 1
		end
	end
	puts cnt
end

$stdin.each do |input|
	getIntegers(input.to_i)
end