r, t = gets.chop.split
a, b = gets.chop.split.map(&:to_i)
u = gets
 
u == "red" ? a = a-1 : b = b-1
 
result = [a, b]
puts result.join(" ")