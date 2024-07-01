n,x = gets.split.map(&:to_i);
ans = n
m = Array.new
n.times do
	m << gets.to_i
end

x -= m.inject(:+)
m.sort!
ans += x / m[0]

puts ans