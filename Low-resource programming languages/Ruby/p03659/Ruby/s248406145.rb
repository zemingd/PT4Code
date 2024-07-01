N = gets.to_i
a = gets.split.map(&:to_i)
csum = [0]*(N+1)
N.times do |i|
	csum[i+1] = csum[i] + a[i]
end
ans = csum[N]
1.upto(N-1) do |i|
	t = (csum[N]-csum[i]*2).abs
	ans = t if t < ans
end
p ans
