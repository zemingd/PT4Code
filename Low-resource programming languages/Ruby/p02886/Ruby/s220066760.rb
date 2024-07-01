n = gets.to_i
d = gets.chomp.split(" ").map(&:to_i)
s = []

(0..n-2).each do |a|
	(a+1..n-1).each do |b|
		s << d[a] * d[b]
	end
end

puts s.inject(:+)