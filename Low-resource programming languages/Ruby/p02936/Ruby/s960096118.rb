n, q = gets.chomp.split.map(&:to_i)
g = Array.new(n)
cnt = Array.new(n, 0)

(n - 1).times do
  a, b = gets.chomp.split.map(&:to_i)
  g[a - 1] ||= []
  g[a - 1] << b - 1
  g[b - 1] ||= []
  g[b - 1] << a - 1
end

q.times do
  p, x = gets.chomp.split.map(&:to_i)
  cnt[p - 1] += x
end

done = Array.new(n, false)
que = [[0, 0]]
while !que.empty?
  cur, c = que.pop
  if done[cur]
    next
  end

  done[cur] = true
  cnt[cur] += c
  g[cur].each do |v|
    que << [v, cnt[cur]]
  end
end

puts cnt.join(" ")