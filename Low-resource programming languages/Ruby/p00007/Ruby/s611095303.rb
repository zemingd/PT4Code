m = 100
gets.to_i.times do
  m = (m * 1.05).ceil
end
puts m * 1000