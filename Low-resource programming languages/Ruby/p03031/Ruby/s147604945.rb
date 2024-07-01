
def check(switches, s, pp)
	s.each.with_index do |a, i|
		on = 0
		a.each do |light|
			on += 1 if switches[light - 1] == 1
		end
		return false if on % 2 != pp[i]
	end
	true
end

n, m = gets.chomp.split.map(&:to_i)
s = []
m.times do
	k = gets.chomp.split.map(&:to_i)
	k.shift
	s.push(k)
end
pp = gets.chomp.split.map(&:to_i)

result = 0;
[0, 1].repeated_permutation(n) do |switches|
	result += 1 if check(switches, s, pp)
end
puts result
