# alpha = ('A'..'Z').to_a


n = gets.chomp.to_i

s = gets.chomp.downcase

# p alpha[n]

def chr2int(c)
	c.ord - 'a'.ord
end

def int2chr(i)
	(i + 'a'.ord).chr
end

def caesar(str, x)
	result = ""
	str.each_char{|c|
		result << int2chr((chr2int(c) + x) % 26)
	}
	result
end

puts caesar(s, n).upcase