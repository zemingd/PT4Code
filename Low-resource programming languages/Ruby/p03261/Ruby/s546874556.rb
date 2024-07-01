N = gets.to_i
s = []

count = Hash.new(0)

N.times do |i|
	tmp = gets.chomp
	count[tmp] += 1
	s.push(tmp)
end

def check(n, ary)
	(n-1).times do |i|
		if ary[i][-1] != ary[i+1][0]
			return false
		end
	end
	return true
end


if check(N, s) && count.values.max > 1
	print("Yes\n")
else
	print("No\n")
end