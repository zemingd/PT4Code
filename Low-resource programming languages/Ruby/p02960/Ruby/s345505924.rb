S = gets.chomp
dgt = S.size
MOD = 10 ** 9 + 7

cnt = 0
short = 0
qs = []
while S.length > 0
	n = S[-1]
	if n == '?'
		qs.push(cnt % 6)
	else
		short += n.to_i * (10 ** (cnt % 6))
	end
	S.chop!
	cnt += 1
end
short = short % 13

mod = [1] + [0] * 12
while !qs.empty?
	k = qs.shift
	newmod = [0] * 13
	(0..9).each do |i|
		m =  (i * 10 ** k) % 13
		13.times do |j|
			newmod[j] = newmod[j] + mod[(j - m) % 13]
		end
	end
	13.times do |l|
		mod[l] = newmod[l] % MOD
	end
end

puts mod[(5 - short)] % MOD