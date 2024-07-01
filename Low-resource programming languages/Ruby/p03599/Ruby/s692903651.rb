A, B, C, D, E, F = gets.chomp.split(" ").map(&:to_i)

a = Array.new(F/(100*A)+1).map.with_index{|x, i| 100*A*i}
b = Array.new(F/(100*B)+1).map.with_index{|x, i| 100*B*i}
w = a.product(b).map{|x, y| (x + y) / 100}.select{|z| z <= F/100}.uniq.sort
tmp = F/100*E
c = Array.new(tmp/C + 1).map.with_index{|x, i| C*i}
d = Array.new(tmp/D + 1).map.with_index{|x, i| D*i}
s = c.product(d).map{|x, y| x + y}.select{|z| z <= tmp}.uniq.sort
ans = [0, 0, 0]
w.each{|wa|
  idx = s.bsearch_index{|x| x > (wa * E)}
  next if idx == 0
  idx = s.size if idx.nil?
  next if (wa * 100 + s[idx-1]) > F
  wk = s[idx-1].to_f / (wa * 100 + s[idx-1])
  ans = [wk, wa*100 + s[idx-1], s[idx-1]] if ans[0] < wk
}

ans.shift
puts ans.join(" ")
