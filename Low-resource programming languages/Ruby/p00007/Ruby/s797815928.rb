debt = 100000
for i in 1..gets.to_i
	debt = (debt*1.05/1000.0).ceil*1000.0
end
puts debt