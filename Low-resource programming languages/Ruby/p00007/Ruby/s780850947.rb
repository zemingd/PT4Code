days = gets
days = days.chomp.to_i
debt = 100000
days.times do
  debt = debt * 1.05
  debt = (debt/1000).ceil * 1000
end
puts debt