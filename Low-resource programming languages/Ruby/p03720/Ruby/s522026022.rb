n, m = gets.split.map &:to_i
road = []
m.times do
  road << gets.split.map(&:to_i)
end

for i in 1..n
  puts road.count{|r| r[0] == i || r[1] == i}
end