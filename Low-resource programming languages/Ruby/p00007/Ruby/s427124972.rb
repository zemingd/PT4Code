weeks = gets.chomp
debt = 100000
weeks.to_i.times do
 debt *= 1.05
 debt = debt.to_i
 if debt%1000 != 0
  debt = (debt/1000 + 1)*1000
 end
end

puts debt