pamox, camo = gets.split.map(&:to_i)
cities = camo.times.map{gets.split.map(&:to_i)}

prefs = Hash.new

index = 0
cities.each do |city|
  prefs[city[0]] = [] if prefs[city[0]] == nil
  prefs[city[0]].push([index, city[1]])
  index += 1
end

res = []

prefs.values.each do |pref|
  pref.sort_by!{|value| value[1]}
end

prefs.each do |prefW|
  count = 1
  prefW[1].each do |city|
    res.push([city[0], prefW[0], count])
    count += 1
  end
end

final = []
res.each do |resval|
  final.push(format("%06d", resval[1]) + format("%06d", resval[2]))
end

p final