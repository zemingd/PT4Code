n = gets.to_i
as = gets.split.map(&:to_i)

as_h = {}
as.each do |a|
  as_h[a] = as_h[a].to_i + 1
end

ans = as.sum

q = gets.to_i
q.times do |i|
  b, c = gets.split.map(&:to_i)

  if as_h[b]
    ans = ans - as_h[b] * b + as_h[b] * c
    as_h[c] = as_h[c].to_i + as_h[b]
    as_h.delete(b)
  end
  puts ans
end