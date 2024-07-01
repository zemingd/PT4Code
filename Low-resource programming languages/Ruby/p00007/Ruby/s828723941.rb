n = gets.chomp.to_i
debt = 100000
n.times { debt += (debt * 0.05 / 1000).ceil * 1000}
puts debt