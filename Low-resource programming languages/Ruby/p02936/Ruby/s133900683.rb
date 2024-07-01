n, q = gets.chomp.split.map(&:to_i)
h = {}
l = []
l[0] = nil
n.times do |i|
  h[i+1] = []
  l[i+1] = 0
end
(n-1).times do |i|
  a, b = gets.chomp.split.map(&:to_i)
  h[a] << b
end
q.times do |i|
  pp, x = gets.chomp.split.map(&:to_i)
  l[pp] += x
end
s = [1]
while s != []
  hp = s.shift
  h[hp].each do |hhp|
    s << hhp
    l[hhp] += l[hp]
  end
end
print l[1]
2.upto(n) do |i|
  print " #{l[i]}"
end
