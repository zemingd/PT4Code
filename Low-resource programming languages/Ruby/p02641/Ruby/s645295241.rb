x,n = gets.split(' ').map(&:to_i)
line = gets
ps = !line ? [] : line.split(' ').map(&:to_i)
cand = (0..101).to_a - ps
res = cand.min_by{|a| (a-x).abs + 0.5*(a>x ? 1 : -1) }
p res