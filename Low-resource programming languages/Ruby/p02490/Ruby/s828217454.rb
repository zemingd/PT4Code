i = 0
x = []
y = []
arry = []
while ((arry[0] != 0) || (arry[1] != 0))
	arry = gets.split{" "}
	arry[0] = arry[0].to_i
	arry[1] = arry[1].to_i
	x[i] = arry[0]
	y[i] = arry[1]
	i += 1
	puts arry[0]
	puts arry[1]
end
(0..(i - 1)).each do |j|
	if x[j] > y[j]
		puts "Case #{j + 1}: #{y[j]} #{x[j]}"
	else
		puts "Case #{j + 1}: #{x[j]} #{y[j]}"
	end
end