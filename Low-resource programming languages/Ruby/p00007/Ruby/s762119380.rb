n = gets.to_i
debt = (10**5)*(1.05**n)
puts "#{debt.round(-4)}"