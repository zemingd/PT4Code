n,m = gets.split.map(&:to_i)
l,r = 1,n
m.times do
  a,b = gets.split.map(&:to_i)
  l = a if a > l
  r = b if b < r
end
p l > r ? 0 : r-l+1
