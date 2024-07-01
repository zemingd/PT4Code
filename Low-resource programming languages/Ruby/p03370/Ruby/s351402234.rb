n,x=gets.split.map &:to_i
a=Array.new()n
for i in 0...n
  a[i]=gets.to_i
end
a.sort!
puts n+(x-a.sum)/a[0]
