n = gets.chomp.to_i
debt = 100000
for i in 0..(n - 1)
  debt *= 1.05
  if debt % 1000 != 0
    debt += 1000 - debt % 1000
  end
end
puts debt.round

