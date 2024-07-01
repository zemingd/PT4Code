N = gets
d = N.length
n = N.to_i

cnt = 0
3.upto(d) do |i|
	['3', '5', '7'].repeated_permutation(i) do |num|
		next if !num.include?('3')
		next if !num.include?('5')
		next if !num.include?('7')
		num = num.join('').to_i
		if num <= n
          cnt += 1
		end
    end
end

puts cnt