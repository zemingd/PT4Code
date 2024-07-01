n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i
s = q.times.map {|_| gets.chomp.split.map(&:to_i)}

g = a.group_by{|i| i}.map{|k,v| [k, v.length]}.to_h

q.times do |i|
  g[s[i][1]] = g[s[i][1]].to_i + g[s[i][0]].to_i
  g.delete(s[i][0])
  p g.map{|k, v| k * v}.sum
end