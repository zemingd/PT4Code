n,m = gets.split.map {|x| x.to_i}
def max(x,y)
  return x > y ? x : y
end
def min(x,y)
  return x < y ? x : y
end
l0,r0 = gets.split.map {|x| x.to_i}
(m-1).times { |i|
  l,r  = gets.split.map {|x| x.to_i}
  l0 = max(l,l0)
  r0 = min(r,r0)
}
if r0 >= l0
  v = r0 - l0 + 1
else
  v = 0
end
puts v
