n, c = gets.to_s.split.map{|t|t.to_i}

a = Array.new(100_001, 0)

n.times do
  si, ti, ci = gets.to_s.split.map{|t|t.to_i}
  ci = (1 << (ci - 1))
  si.upto(ti){ |i| a[i] |= ci }
end

ans = 0
a.each do |v|
  t = v.to_s(2).count('1')
  ans = t if ans < t
end

puts ans