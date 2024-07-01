n, q = gets.split.map(&:to_i)
a = Array.new(n - 1){gets.split.map(&:to_i)}.sort
p = Array.new(q){gets.split.map(&:to_i)}.sort
b = Array.new(n, 0)
p.each do |x, y|
  que = []
  que << x
  while que.size > 0
    u = que.shift
    b[u - 1] += y
    a.select{|g, _| g == u}.each do |g, h|
      que << h
    end
  end
end
puts b.join(' ')