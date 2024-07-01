n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.sort!
ps = []
m.times do |i|
  b, c = gets.split.map(&:to_i)
  ps << {
    :b => b,
    :c => c
  }
end
ps.sort! do |x, y|
  v = -1
  v = 1 if x[:c] < y[:c]
  v = 0 if x[:c] == y[:c]
  v
end
ans = 0

ps.each do |p|
  p[:b].times do |i|
    t = a.shift
    break if t == nil
    ans += [t, p[:c]].max
  end
  break if a.length == 0
end
a.each do |v|
  ans += v
end
puts ans
