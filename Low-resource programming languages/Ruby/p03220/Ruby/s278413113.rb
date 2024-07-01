N = gets.to_i
T,A = gets.split.map &:to_i
H = gets.split.map &:to_i
puts H.map.with_index(1){|h,i|[i, (A-T-(h*0.006)).abs]}.sort_by{|k,v|v}[0][0]
