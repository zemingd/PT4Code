n, m = gets.split.map(&:to_i)
ab = n.times.map{|_| gets.split.map(&:to_i)}

g = ab.group_by{|x| x[0]}

ans = 0
c = Array.new
(1..m).each do |i|
  c << g[i].to_a.map{|ab| ab[1]}
  c.flatten!.sort!{|a, b| b<=>a}
  w = c.shift
  ans += w.to_i
end
p ans