N = gets.to_i
T,A = gets.split.map &:to_f
H = gets.split.map &:to_f
puts H.map.with_index(1){|h,i|[i, (A-T-(h*0.006)).abs]}.sort_by{|i|i[1]}[0][0]
