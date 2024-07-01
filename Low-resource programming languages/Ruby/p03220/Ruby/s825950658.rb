gets
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)
X = (T - A) * 1000
puts H.map{|v|v*6}.map{|v|v-X}.map(&:abs).map.with_index{|v,i|[v,i+1]}.sort_by{|v|v[0]}.first[1]
