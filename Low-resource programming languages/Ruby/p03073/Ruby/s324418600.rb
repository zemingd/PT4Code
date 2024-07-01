s = gets.delete!("\n").split(//u).map &:to_i
ss = s.each_slice(2).to_a
s1 = ss.map {|x| x[0]}
s2 = ss.map {|x| x[1]}
s2.delete(nil)

ans1 = s1.count(0) + s2.count(1)
ans2 = s1.count(1) + s2.count(0)

puts [ans1, ans2].min
