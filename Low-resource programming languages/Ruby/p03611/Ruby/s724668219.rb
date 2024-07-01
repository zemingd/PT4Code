N = gets
V = gets.split.map{|v| v.to_i}
r = Array.new(V.uniq.max, 0)
V.uniq.each{|v| r[v] = V.count(v) + V.count(v-1) + V.count(v+1)}
puts r.max