weeks = gets.to_i
debt = 100_000

weeks.times do
  debt += debt * 0.05
end

puts (debt / 10000).ceil * 10000