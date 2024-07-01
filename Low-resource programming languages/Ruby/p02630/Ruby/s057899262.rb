n = gets.to_i
as = gets.split.map(&:to_i)

as_h = {}
as.each do |a|
  as_h[a] = as_h[a].to_i + 1
end

q = gets.to_i
q.times do |i|
  b, c = gets.split.map(&:to_i)
  if as_h[b]
    as_h[c] = as_h[c].to_i + as_h[b]
    as_h.delete(b)
  end
  ans = 0
  as_h.each do |k, v|
    ans += k * v
  end
  puts ans
end