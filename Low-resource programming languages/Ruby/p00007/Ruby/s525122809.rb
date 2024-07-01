debt = 100_000
n = gets.to_i
n.times do |i|
  debt = (debt * 1.05 / 1000).ceil * 1000
end
puts debt