debt = 100
gets.to_i.times { debt = (debt * 1.05).ceil }
puts debt * 1000

