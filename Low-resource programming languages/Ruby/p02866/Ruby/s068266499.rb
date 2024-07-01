gets
d=gets.split.map(&:to_i)
testd = d[1..-1].sort.uniq
if d[0] == 0 && testd == [*1..testd.size]
  p d.group_by(&:itself).sort.map{|k,v|v.size}.each_cons(2).map{|a,b|a**b%998244353}.inject(1){|s,r|s*r%998244353}
else
  p 0
end
