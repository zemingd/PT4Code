N,M = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!
m = []
M.times do
  m << gets.split.map(&:to_i)
end
m.sort_by!{|t| -t[1]}

x = []
m.each do |mi|
  x.concat([mi[1]] * mi[0])
end

i = 0
ans = 0
while x[i] && a[i] < x[i]
  ans += x[i]
  i+=1
end
puts ans + a[i..-1].inject(&:+)
