s = gets.split('').to_s

count = 0
ans = 0
tcgt = ['A','C','G','T']

s.each do |c|

	if tcgt.include?(c)
		count += 1
	elsif m.size > ans.size
		ans = count
		count = 0
	end
end

if count > ans
	puts count
else
	puts ans
end


