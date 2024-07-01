require 'prime'

def solve n
	flag = true
	(1..Math.sqrt(n)).each do |i|
		if n % i == 0 && (@hash[i] == 1 || @hash[n/i] == 1)
			flag = false
			break
		end
	end
	flag
end

n = gets.to_i
as = gets.chomp.split.map(&:to_i).sort
@hash = Hash.new(0)
dup_check = Hash.new(0)
ans = 0

as.each do |a|
	dup_check[a] += 1
	if dup_check[a] > 1
		ans -= 1 if dup_check[a] == 2
		next
	end
	flag = solve(a)
	if flag
		ans += 1
		@hash[a] = 1
	end
end

puts ans