n = gets.chomp.to_i
sp=Hash.new
n.times {
  s, p = gets.split
  sp.store(s + "" + sprintf("%03d", 100 - p.to_i), 0)
}
i=1
sp.sort.each { |key, value|
  sp[key] = i
  i += 1
}
puts sp.values
