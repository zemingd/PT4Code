n, l = gets.chomp.split.map(&:to_i)
arr = (0..(n-1)).to_a.map{|a| l + a}
sum = arr.inject(:+)

if l >= 0
	puts sum - arr[0]
elsif l < 0
	if n > l.abs 
		puts sum
	else 
		puts sum - arr[-1]
	end
end

