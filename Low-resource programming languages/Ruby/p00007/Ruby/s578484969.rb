debt = 100000
n = gets.to_i
n.times { debt = (debt * 1.05 + 400).round(-3) }
puts debt