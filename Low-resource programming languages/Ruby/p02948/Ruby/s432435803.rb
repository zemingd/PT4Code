n, m = gets.split.map(&:to_i)
ab = n.times.map{|_| gets.split.map(&:to_i)}

g = ab.group_by{|x| x[0]}

ans = 0
c = Array.new
(1..m).each do |i|
  tmp = c
  prefix = []
  g[i].to_a.map{|ab| ab[1]}.sort{|a, b| b <=> a}.each do |i|
    idx = tmp.bsearch_index {|j| j <= i}
    if idx.nil?
      prefix << i
      tmp = []
    else
      tmp_b = tmp
      prefix << tmp.slice(0..idx) + [i]
      tmp = tmp_b.slice(idx..c.length)
    end
  end
  c = prefix + tmp
  c.flatten!
  w = c.shift
  ans += w.to_i
end
p ans