a = gets.chomp.to_i

ary = [6,9,36,81,216,729,1296,6561,7776,46656,59049].reverse

cnt = 0

while (a>0 && tmp = ary.shift) do
	#p [tmp,cnt,a]
	n = a / tmp
	if n > 0
		if n >= 4 && n % 2 == 0
			cnt += n / 2
		else
			cnt += n
		end
		a -= tmp * n
	end
end

p cnt+a