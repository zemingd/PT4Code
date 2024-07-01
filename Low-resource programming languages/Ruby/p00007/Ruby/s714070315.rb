debt = 100000
gets.to_i.times do
  debt = (debt * 1.05 / 1000).ceil * 1000
end
puts debt