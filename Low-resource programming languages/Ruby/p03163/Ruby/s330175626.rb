N, W = gets.split.map(&:to_i)
w0, v0 = gets.split.map(&:to_i)
d = [[0, 0], [w0, v0]]

m = v0

(N-1).times do
  w, v = gets.split.map(&:to_i)

  t = d.map do |a|
    a[0] + w < W ? [a[0] + w, a[1] + v] : nil
  end.compact
  d.concat(t)
  t.each do |a|
    m = [a[1], m].max
  end
end

puts m