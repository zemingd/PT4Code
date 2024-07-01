gets
t,a=gets.split.map &:to_i
p gets.split.map{|h|(t-h.to_i*0.006-a).abs}.each_with_index.min[1]+1
