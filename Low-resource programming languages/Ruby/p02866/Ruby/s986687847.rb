n=gets.to_i
d=gets.split.map(&:to_i).sort
testd = d[1..-1].uniq
if d[0] == 0 && testd == [*1..testd.size]
  p d.group_by(&:itself).sort.map{|k,v|v.size}.each_cons(2).map{|a,b|a**b}.inject(:*)%998244353
else
  p 0
end