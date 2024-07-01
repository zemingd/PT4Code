debt = 100000
interest_rate = 0.05

week = gets.to_i
week.times do
  debt += ((debt * interest_rate) / 1000).ceil * 1000
end

puts debt