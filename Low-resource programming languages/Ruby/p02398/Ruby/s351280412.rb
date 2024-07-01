a, b, c = gets.split(" ").map{|x| x.to_i}
div = 0
 
for i in a..b
  c % i == 0 ? div += 1 : self
end
 
puts div