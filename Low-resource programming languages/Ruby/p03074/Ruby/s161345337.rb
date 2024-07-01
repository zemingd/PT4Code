n, k = gets().split(' ').map(&:to_i)
s = gets().strip.split('').map(&:to_i)


spl = [0]
s.each_with_index{|si, i|
	next if i == 0
	if s[i - 1] != si
		spl.push(i)
	end
}
spl.push(s.length)
p spl

mx = 0
spl.each_with_index{|spli, i|
	if i == 0 && s[0] == 0
		j = i + k * 2
	else
		j = i + k * 2 + 1
	end
	j = spl.length - 1 if j >= spl.length

	puts "#{spli} to #{spl[j]}" if mx < spl[j] - spli
	mx = spl[j] - spli if mx < spl[j] - spli
}

puts mx
