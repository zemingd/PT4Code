n = gets.to_i
v = gets.split.map(&:to_i)

e = Hash.new(0)
o = Hash.new(0)

n.times do |i|
  if i.even?
    e[v[i]] += 1
  else
    o[v[i]] += 1
  end
end

e.sort_by { |_,v| -v }
o.sort_by { |_,v| -v }


e1 = e.values[0]
e2 = e.size > 1 ? e.values[1] : 0
o1 = o.values[0]
o2 = o.size > 1 ? o.values[1] : 0

ans = 0
if e.keys[0] != o.keys[0]
  ans = n - e1 - o1
else
  ans1 = n - e1 - o2
  ans2 = n - e2 - o1
  ans = [ans1,ans2].min
end

puts ans