a, b, c, d=gets.split.map(&:to_i)

v=Array.new(200){0}
v[a]+=1; v[b+1]-=1
v[c]+=1; v[d+1]-=1

200.times do |i|
  if i>0
    v[i]+=v[i-1]
  end
end

puts [v.count(2)-1, 0].max
