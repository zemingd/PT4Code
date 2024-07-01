n = gets.to_i
debt = 10**5
n.times {
	debt*=1.05
	debt = (debt/ 1000.0).ceil * 1000.0}
puts debt.to_i