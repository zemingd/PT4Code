n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort

s = []
k = m.times.
  map { gets.split.map(&:to_i) }.
  sort_by { |b, c| -c }.
  each { |b, c| s.push(*([c] * b)); break if s.size >= n }

a.size.times do |i|
  a[i] = [a[i],s[i]].compact.max
end

puts a.reduce(&:+)