gets
p gets.split.map(&:to_i).flat_map{|s|[s-1,s,s+1]}.group_by(&:itself).map{|k,v|v.size}.max
