n = gets.chomp
d = gets.split.map(&:to_i)
puts (d.min .. d.max).map{|x| d.select{|e| e - 1 <= x && x <= e + 1}.size}.max
