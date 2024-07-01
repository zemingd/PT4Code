n = gets.strip.to_i
d = gets.strip.split.map(&:to_i) 

h = 0
d.combination(2) {|x, y| h += x * y }
puts h