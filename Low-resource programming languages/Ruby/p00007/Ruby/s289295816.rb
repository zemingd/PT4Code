n = gets.to_i

data = 100000

while n != 0
	data = data + (data * 0.05)
	data = data + 499
	#百の位で四捨五入する
	data = data.round(-3)

	n = n - 1
end

puts data