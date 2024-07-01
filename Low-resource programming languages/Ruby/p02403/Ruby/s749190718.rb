input = gets.chomp.split("\s")
h, w = input[0].to_i, input[1].to_i

until (h == 0) && (w == 0)
	for i in 1..h
	output = ['#'] * w
	puts output.join
	end

input = gets.chomp.split("\s")
h, w = input[0].to_i, input[1].to_i
end