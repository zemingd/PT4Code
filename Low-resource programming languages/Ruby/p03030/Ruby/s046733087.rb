n = gets.to_i
puts n.times.map{|i|
  a,b = gets.split
  [a + (200-b.to_i).to_s,i+1]
}.sort_by{|x|x[0]}.map{|x|x[1]}