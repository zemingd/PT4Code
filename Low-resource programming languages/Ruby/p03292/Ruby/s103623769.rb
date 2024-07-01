as = gets.split.map(&:to_i)
as.sort!
cost = 0
2.times do
  before = as.shift
  cost += (as[0] - before).abs
end
puts cost
