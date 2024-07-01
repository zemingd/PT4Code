n, m = readline.split.map(&:to_i)
cities = readlines.map{|l| l.split.map(&:to_i)}

r = cities.group_by{|p, y| p}.map{|o, c| [o, c.map{|p, y| y}.sort]}.to_h

cities.each{|p, y|
    d = r[p].index(y)
    puts format("%06d%06d", p, d+1)
}