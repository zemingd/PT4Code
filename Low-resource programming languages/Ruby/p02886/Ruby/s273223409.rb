n = gets.to_i
d = gets.split.map(&:to_i)
pro = d.inject(0){|x,y| x + y**2}
sum = d.inject(:+)
puts (sum**2 - pro)/2