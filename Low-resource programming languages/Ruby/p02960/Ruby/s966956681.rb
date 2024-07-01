S = gets.chomp
MOD = 10 ** 9 + 7

cnt = 0

mod = [1] + [0] * 12
S.length.times do
	n = S[-1 *(1 + cnt)]
	newmod = [0] * 13
	if n == '?'
		(0..9).each do |i|
			m =  i * 10 ** (cnt % 6)
			13.times do |j|
				newmod[j] = newmod[j] + mod[(j - m) % 13]
			end
		end
	else
		m = n.to_i * 10 ** (cnt % 6)
		13.times do |j|
			newmod[j] = mod[(j - m) % 13]
		end
	end
	13.times do |j|
		mod[j] = newmod[j] % MOD
	end
	cnt += 1
end

puts mod[5]