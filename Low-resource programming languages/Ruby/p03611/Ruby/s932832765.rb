n = gets.chomp
d = gets.split.map(&:to_i)
x_arr = d.uniq.flat_map{|e| [e - 1, e, e + 1] }.uniq
puts x_arr.map{|x| d.select{|e| e - 1 <= x && x <= e + 1}.size}.max
