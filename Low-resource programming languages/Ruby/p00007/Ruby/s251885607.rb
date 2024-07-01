d = 100_000r
gets.to_i.times do |t|
  d = (d*1.05r).ceil(-3)
end
p d