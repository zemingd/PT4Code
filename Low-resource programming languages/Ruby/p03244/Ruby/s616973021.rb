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

e1,e2 = e.values[0,2]
o1,o2 = o.values[0,2]

ans = 0
if e.keys[0] != o.keys[0]
  ans = n - e1 - o1
else
  ans1 = n - e1 - o2
  ans2 = n - o1 - e2
  ans = ans1 > ans2 ? ans2 : ans1
end

puts ans