n, m = gets.split.map(&:to_i)
abs = []
m.times do
  abs.push gets.split.map(&:to_i)
end
road = Array.new(n, 0)
abs.each do |ab|
  road[ab.first - 1] += 1
  road[ab.last - 1] += 1
end
road.each do |r|
  puts r
end
