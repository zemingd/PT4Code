n,m = gets.split.map(&:to_i)
a = []
m.times do
	a << gets.to_i
end
MOD = 1000000007
def f nu
	([nil]*(nu-1)).inject([0,1]) do |sum,i|
		[sum[1],(sum[0]+sum[1])%MOD]
	end[1]
end
a.unshift(-1)
a.push(n+1)
ans = 1
a.each_cons(2) do |a1,a2|
	if a2 == a1+1
		puts 0
		exit
	end
	ans *= f a2-a1-1
	ans %= MOD
end
puts ans