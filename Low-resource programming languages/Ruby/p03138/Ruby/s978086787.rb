N,K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

d = 40
cnt = Array.new(d){[0,0]}
memo = [0]*d
ans = []

bit = 1
d.times do |i|
	a.each do |v|
		cnt[i][v&bit == 0 ? 0 : 1] += 1 
	end 
	bit *= 2
end

#前処理
memo[0] = cnt[0].max
bit = 2
1.upto(d-1) do |i|
	memo[i] = memo[i-1] + cnt[i].max * bit
	bit *= 2
end

bit = 2 ** (d-1)
tmp = 0
(d-1).downto(0) do |i|
	if bit&K > 0
		ans << memo[i-1] + cnt[i][1] * bit + tmp if i>0
		tmp += cnt[i][0] * bit
	else
		tmp += cnt[i][1] * bit
	end
	bit /= 2
end
ans << tmp
p ans.max