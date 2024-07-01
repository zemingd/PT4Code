n, k, q = gets.split.map(&:to_i)
a = q.times.map { gets.to_i }
points = Array.new(n + 1, k - q)

q.times do |i|
  points[a[i]] += 1
end

puts points[1..n].map { |v| v > 0 ? 'Yes' : 'No' }
