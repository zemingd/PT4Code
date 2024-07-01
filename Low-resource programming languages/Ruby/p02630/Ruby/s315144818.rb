n = gets.to_i
a = gets.split.map(&:to_i).group_by(&:itself).transform_values(&:count)
sum = a.sum{|k, v| k * v}
q = gets.to_i
q.times do
  b, c = gets.split.map(&:to_i)
  if a.has_key?(b)
    sum += (c - b) * a[b]
    if a.has_key?(c)
      a[c] += a[b]
    else
      a[c] = a[b]
    end
    a[b] = 0
  end
  p sum
end
