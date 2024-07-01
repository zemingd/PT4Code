n,m = gets.chomp.split.map(&:to_i)
cities = []
m.times do |i|
  cities << gets.chomp.split.map(&:to_i) + [i]
end
cities.sort_by!{|i| i[1] }
ps = Array.new(n+1,0)
ans = Array.new(m)
cities.each do |p,y,i|
  ps[p] += 1
  s = ps[p].to_s.size
  x = "0"*(6-s) + ps[p].to_s
  p = "0"*(6-p.to_s.size) + p.to_s
  ans[i] = p + x
end

ans.each do |a|
  puts a
end 
