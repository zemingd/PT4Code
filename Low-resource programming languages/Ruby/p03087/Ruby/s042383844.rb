def calc(s, n)
	return 0 if n == 0 || n == 1
	add = (s[-2] == "A" && s[-1] == "C") ? 1 : 0
	calc(s, n-1) + add
end

def test
	n, q = gets.chomp.split(" ").map(&:to_i)
	s = gets.chomp
	q.times do
		l, r = gets.chomp.split(" ").map(&:to_i)
		puts calc(s, r) - calc(s, l)
	end
end

test