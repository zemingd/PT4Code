n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
k = m.times.
  map { gets.split.map(&:to_i) }.
  sort_by { |b, c| -c }.
  flat_map { |b, c| [c] * b }.
  take(n)
 
s = 0
a.size.times do |i|
  s += [a[i],k[i]].compact.max
end
 
puts s