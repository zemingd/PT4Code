require 'prime'

def solve n
	flag = true
	i = 1
	sqrt = Math.sqrt(n)
	(1..sqrt).each do |i|
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
ans = 0

as.each_cons(2).with_index do |(a,b),i|
	@hash[a] = 1 if a == b
	next if @hash[a] == 1
	flag = solve(a)
	if flag
		ans += 1
		@hash[a] = 1
	end
	if i == n - 2 && @hash[b] != 1
		flag = solve(b)
		ans += 1 if flag
	end
end

puts ans