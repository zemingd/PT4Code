s = gets.chop
k = gets.chop.to_i
 
selected = s.index(/[^1]/).nil ? "1" : s[[k, s.index(/[^1]/)].min]
 
puts selected