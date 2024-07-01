n = gets.chomp.to_i
debt = 100000
n.times do |i|
	debt = (debt*0.00105).ceil*1000
end
puts debt