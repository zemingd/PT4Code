a=gets.split.map &:to_i
a.sort!
k=STDIN.read.to_i
for _ in 1..k
  a[2]*=2
end
puts a.sum
