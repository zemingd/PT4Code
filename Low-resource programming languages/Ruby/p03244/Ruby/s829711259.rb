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

ee = e.sort_by { |_,v| -v }
oo = o.sort_by { |_,v| -v }


e1 = ee[0][0]
e2 = ee.size > 1 ? ee[1][0]: 0
o1 = oo[0][0]
o2 = oo.size > 1 ? oo[1][0] : 0

ans = 0
if ee[0][1] != oo[0][1]
  ans = n - e1 - o1
else
  ans1 = n - e1 - o2
  ans2 = n - e2 - o1
  ans = [ans1,ans2].min
end

puts ans