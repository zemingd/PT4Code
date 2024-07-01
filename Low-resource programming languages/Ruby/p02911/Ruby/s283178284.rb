n,k,q=gets.strip.split.map(&:to_i)
p = n.times.map{gets.split.map(&:to_i)}
a=[]
(1..n).each do |i|
  if k-(q-p.count(i)) > 0 then
    a.push("Yes")
  else
    a.push("No")
  end
end
  puts a
