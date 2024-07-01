n = gets.to_i
transports = []
5.times do
  transports.push(gets.to_i)
end
cities = [n, 0, 0 ,0 ,0 ,0]
t_past = 0
while cities[5] != n do
  cities[0..4].each_with_index.reverse_each do |city, index|
    cities[index + 1] += [transports[index], city].min
    cities[index] -= [transports[index], city].min
  end
  t_past += 1
end
puts t_past