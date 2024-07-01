_, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
h = Hash.new(0)
m.times do
  u, v = gets.split.map(&:to_i)
  h[v] += u
end
i = 0
h.sort_by{|k, v| -k}.each do |x, y|
  break if a[i] >= x
  y.times do
    a[i] = x
    i += 1
    break if i >= n
    break if a[i] >= x
  end
end
puts a.inject(:+)