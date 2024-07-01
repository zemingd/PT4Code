N = gets
V = gets.split.map(&:to_i)
r = V.reduce({}){|r, v| r[v] = r[v].to_i + 1; r}

puts r.keys.map{|k| r[k] + r[k-1].to_i + r[k+1].to_i}.max
