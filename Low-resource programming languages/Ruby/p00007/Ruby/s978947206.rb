debt = 100000
n = gets.chomp.to_i
n.times do
  debt *= 1.05
  debt = debt - (debt % 1000)
end
puts debt.to_i