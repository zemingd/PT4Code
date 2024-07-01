t, l = gets.split.map(&:to_i)
tower = gets.split.map(&:to_i)
d = {}
td = {}

l.times do
  s,e = gets.split.map(&:to_i)
  td[s] = 1
  td[e] = 1
  s = tower[s-1] 
  e = tower[e-1] 
  if s > e
	d[s] = 1
  elsif e > s
    d[e] = 1
  else
    
  end
end
puts t - td.length + d.length