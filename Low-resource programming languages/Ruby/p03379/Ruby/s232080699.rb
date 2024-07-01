n = gets.to_i
x = gets.split(" ").map{ |i| i.to_i }
xx = []
for i in 0...n do
  xx = Array.new(x)
  xx[i] = -1
  xx.sort!
  puts xx[xx.length / 2]
end
