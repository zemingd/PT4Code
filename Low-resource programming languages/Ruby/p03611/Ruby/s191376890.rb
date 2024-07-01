n = gets.chomp
d = gets.split.map(&:to_i)
puts (0 .. 100000).map{|x| d.select{|e| e - 1 <= x && x <= e + 1}.size}.max
