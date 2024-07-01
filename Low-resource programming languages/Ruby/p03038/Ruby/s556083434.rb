n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
h = Hash.new(0)
a.each do |x|
  h[x] += 1
end
m.times do
  u, v = gets.split.map(&:to_i)
  u.times do
    h[v] += 1
  end
end
sum = 0
cnt = 0
h.sort_by{|k, v| -k}.each do |x, y|
  if n > cnt + y
    sum += x * y
    cnt += y
  else
    sum += x * (n - cnt)
    break
  end
end
puts sum