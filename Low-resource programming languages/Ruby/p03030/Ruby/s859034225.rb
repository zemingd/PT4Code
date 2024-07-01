n = gets.chomp.to_i

s = []
p = []
cities = {}

n.times{|i|
  sp = gets.chomp.split(' ')
  s[i] = sp[0]
  p[i] = sp[1].to_i
  cities[s[i]] = [] if cities[s[i]].nil?
  cities[s[i]].push([i, p[i]])
}

cities.keys.sort.each{|c|
  cities[c].sort{|a, b| b[1] <=> a[1] }.each{|e| puts e[0] + 1 }
}
