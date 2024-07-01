a=gets.split.map &:to_i
a.sort!
k=gets.to_i
for i in 1..k
  a[2]*=2
end
puts a.sum
