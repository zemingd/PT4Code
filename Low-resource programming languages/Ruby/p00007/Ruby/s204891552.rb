debt = 100_000
gets.to_i.times { debt = (debt * 1.05 / 1000).ceil * 1000 }
puts debt