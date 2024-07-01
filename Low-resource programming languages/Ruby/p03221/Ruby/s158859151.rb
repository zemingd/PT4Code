n, m = gets.split.map(&:to_i)
cs = []
m.times do |i|
  p,y = gets.split.map(&:to_i)
  cs << [p,y,i]
end

cs = cs.sort_by do |c|
  [c[0], c[1]]
end

num = 1
h = {}
cs.each do |c|
  pref = c[0]
  h[pref] ||= 0
  h[pref] += 1
  id = "#{pref.to_s.rjust(6,'0')}#{h[pref].to_s.rjust(6, '0')}"
  c << id
end

cs.sort!{|c| c[2]}
cs.each do |c|
  puts c[3]
end
