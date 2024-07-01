N = gets
V = gets.split.map{|v| v.to_i}
r = V.uniq.reduce({}){|r, v| r[v] = V.count(v); r}

puts r.keys.map{|k| r[k] + r[k-1].to_i + r[k+1].to_i}.max
