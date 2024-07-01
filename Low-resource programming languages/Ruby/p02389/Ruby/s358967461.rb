x, y = ARGF.gets.split.map{|n| n.to_i}  #=>[3, 5, 7] 
a = x * y
b = 2 * (x + y)
puts "#{a} #{b}"