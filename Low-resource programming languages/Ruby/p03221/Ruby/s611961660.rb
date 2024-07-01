n, m = gets.chop.split.map(&:to_i)
cities = []
ids = {}
n.times do |i|
  ids[(i+1).to_s.to_sym] = []
end
m.times do
  p, y = gets.chop.split.map(&:to_i)
  cities.push([p,y])
  ids[p.to_s.to_sym].push(y)
end
cities.each do |city|
  p, y = city[0], city[1]
  pref_id = p.to_s.rjust(6, "0")
  city_id = (ids[p.to_s.to_sym].sort.index(y) + 1).to_s.rjust(6, "0")
  puts pref_id.concat(city_id)
end