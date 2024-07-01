N=gets.to_i
as=gets.split.map(&:to_i)
as=as.map.with_index{|e,i|[e,i+1]}
as=as.sort_by{|e|e[0]}
puts as.map{|e|e[1]}.join(" ")
