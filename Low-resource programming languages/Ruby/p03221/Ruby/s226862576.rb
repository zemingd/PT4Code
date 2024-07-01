N, M = gets.chomp.split.map(&:to_i)
cities = []
M.times do |i|
  p, y = gets.chomp.split.map(&:to_i)
  cities.push([p, y, i])
end
cities.sort_by!{|city| city[1]}
code = Array.new(M)
pref = [1] * (N + 1)

cities.each do |city|
  p = city[0]
  x = pref[p]
  number = p.to_s.rjust(6, '0') + x.to_s.rjust(6, '0')
  code[city[2]] = number
  pref[p] += 1
end
puts code
