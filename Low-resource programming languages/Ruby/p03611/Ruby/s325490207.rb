n = gets.chomp
d = gets.split.map(&:to_i)
x_min, x_max = d.minmax
puts (x_min .. x_max).map{|x| d.select{|e| e - 1 <= x && x <= e + 1}.size}.max
