require 'prime'

def solve n
	flag = true
	sqrt = Math.sqrt(n).ceil
	sqrt.times do |i|
		if n % (i+1) == 0 && (@hash[i+1] == 1 || @hash[n/(i+1)] == 1)
			flag = false
			break
		end
	end
	flag
end

n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
@hash = Hash.new(0)
ans = 0
(n-1).times do |i|
	if as[i] == as[i+1]
		@hash[as[i]] = 1
	end
end

as.each do |a|
	next if @hash[a] == 1
	flag = solve(a)
	if flag
		ans += 1
		@hash[a] = 1
	end
end

puts ans