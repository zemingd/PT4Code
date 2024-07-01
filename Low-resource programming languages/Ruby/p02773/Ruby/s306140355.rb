n = gets.to_i
t = {}

n.times do |i|
  s = gets
  if t[s] == nil
    t[s] = 0
  else
    t[s] += 1
  end
end

t1 = t.sort_by{|_,v|-v}
m = t1[0][1]
ans = []
t1.each do |tt|
  if tt[1] == m
    ans.push(tt[0])
  else
    break
  end
end

ans.sort!
ans.each do |d|
  puts d
end

