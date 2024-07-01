lines = readlines.map{|line| line.split(' ').map(&:to_i)}
s=lines[0][1]
a=0
e=lines[1].sort.reverse
for i in 1..s
  e.shift(1)
end
a=a+e.inject(:+)
puts a