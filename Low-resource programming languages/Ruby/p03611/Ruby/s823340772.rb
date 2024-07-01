n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)
arr_d = arr.map{|x| x-1}
arr_u = arr.map{|x| x+1}

comp = arr+arr_d+arr_u
puts comp.count(comp.max_by{|v| comp.count(v)})