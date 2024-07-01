n = gets.to_i

debt = 10_0000

def add_interest(debt)
	return (debt * 1.05).to_r.ceil(-3)
end

n.times do
	debt = add_interest(debt)
end

p debt