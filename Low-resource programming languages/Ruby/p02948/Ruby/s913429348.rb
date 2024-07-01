n, m = gets.split.map(&:to_i)
ab = n.times.map{|_| gets.split.map(&:to_i)}

g = ab.group_by{|x| x[0]}

ans = 0
c = Array.new
(1..m).each do |i|
  g[i].to_a.map{|ab| ab[1]}.sort{|a, b| b <=> a}.each do |i|
    idx = c.bsearch_index {|j| j <= i}
    if idx.nil?
      c << i
    else
      c = c.slice(0..idx) + [i] + c.slice(idx..c.length)
    end
  end
  w = c.shift
  ans += w.to_i
end
p ans