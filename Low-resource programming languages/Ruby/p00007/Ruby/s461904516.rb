n = gets.to_i

debt = 100000

n.times do
  debt *= 1.05
  debt = (debt/1000.0).ceil * 1000
end

puts debt