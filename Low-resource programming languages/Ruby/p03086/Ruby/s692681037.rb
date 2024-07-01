s = gets.split('')

count = 0
ans = 0
acgt = ['A','C','G','T']

s.each do |c|

	if acgt.include?(c)
		count += 1
	else
		count = 0
	end

	if count >= ans
		ans = count
	end
end

puts ans