m = gets.to_i
a = gets.split.map(&:to_i)
b = a.sort
t = []
a.each_with_index  do |v,i|
 a[i] == b[i] ?t.push(1):t.push(0)
end
puts t.count(0) >2  ? "NO":"YES"
