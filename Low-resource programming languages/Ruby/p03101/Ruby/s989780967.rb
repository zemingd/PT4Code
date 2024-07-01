height, width =  gets.chomp.split.map(&:to_i)
h, w = gets.chomp.split.map(&:to_i)
puts (height-h)*(width-w)