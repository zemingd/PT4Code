weeks = gets.to_i
debt = 100_000

weeks.times do
  debt += debt * 0.05
  debt = (debt / 1000).ceil * 1000
end

puts debt