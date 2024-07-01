n = gets.to_i
	i = 100000
n.times do
	i = (i*0.00105).ceil*1000
end
puts i