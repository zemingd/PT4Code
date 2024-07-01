N, X = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)
d = Array.new(N)
(0..(N - 1)).each do |i|
	d[i] = (x[i] - X).abs
end
if N == 1 then
	p d[0]
	exit(0)
end
ans = d[0].gcd(d[1])
(2..(N - 1)).each do |i|
	ans = ans.gcd(d[i])
end
p ans