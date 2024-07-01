d = 100_000.rationalize
gets.to_i.times do |t|
  d = (d*(1.05).rationalize).ceil(-3)
end
p d