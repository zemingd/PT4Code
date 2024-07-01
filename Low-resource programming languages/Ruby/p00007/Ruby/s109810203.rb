days = gets
days = days.chomp.to_i
debt = 100_000
days.times do
  debt = debt * 1.05
end
debt = debt.round(-4)
puts debt