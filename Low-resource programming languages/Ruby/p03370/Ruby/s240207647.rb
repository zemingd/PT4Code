n,x = gets.split(" ").map{|v| v.to_i}
total = 0
min = x
c = 0
n.times{|t|
  v = gets.to_i
  total += v
  c += 1
  min = [min, v].min
}
rest = x - total
c = c + rest / min
puts c
