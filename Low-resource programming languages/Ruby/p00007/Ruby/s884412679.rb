money = 100_000

gets.to_i.times do
  money = (money * 1.05 / 1000).ceil * 1000
end

puts money