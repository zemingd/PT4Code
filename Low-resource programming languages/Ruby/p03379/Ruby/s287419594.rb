n = gets.to_i
x = gets.split(" ").map{ |i| i.to_i }
xx = Array.new(x)
for i in 0...n do
  xx[i] = -1
  xx.sort!
#  p xx
#  p x
  puts xx[xx.length / 2]
  xx = Array.new(x)
#  p xx
end
