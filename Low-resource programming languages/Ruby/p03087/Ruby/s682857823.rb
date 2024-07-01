def check(ss)
	sum = 0
	ss.each_char.each_cons(2) do |s|
		sum += 1 if s == ["A", "C"]
	end
	sum
end

def test
	n, q = gets.split(" ").map(&:to_i)
	s = gets.chomp
	q.times do
		l, r = gets.split(" ").map(&:to_i)
		puts check(s[l-1..r-1])
	end
end

test
