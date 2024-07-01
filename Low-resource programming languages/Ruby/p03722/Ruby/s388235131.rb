N, m = gets.chop.split.map(&:to_i)
a = Array.new(m+1, 0)
b = a.dup
c = a.dup
(1..m).to_a.each do |i|
  a[i], b[i], c[i] = gets.chop.split.map(&:to_i)
end

@node = Array.new(N+1, nil)
(1..m).to_a.each do |i|
  if @node[a[i]] == nil
    @node[a[i]] = []
  end
  @node[a[i]] << { to: b[i], cost: c[i] }
end

@score_list = []

def go(from, now, total_cost, path)
  path << now
  if path.count(now) == 2
    @score_list << 'inf'
    return
  end
  if now == N
    return if @already_in_N
    @already_in_N = true
    @score_list << total_cost
  end
  if @node[now].nil?
    return
  end
  @node[now].each do |edge|
    go(now, edge[:to], (total_cost + edge[:cost]), path.dup)
  end
end

def go_around(now, total_cost, path)
  @node[now].each do |edge|
    @already_in_N = false
    go(now, edge[:to], (total_cost + edge[:cost]), (path << now).dup)
  end
end

go_around(1, 0, [])

result = if @score_list.include?('inf')
           'inf'
         else
           @score_list.max
         end
puts result