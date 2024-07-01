input=gets.to_i
debt = 100000
input.times do
	debt = (debt*1.05 /1000).ceil * 1000
end
puts debt

