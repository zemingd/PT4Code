n, k, q = gets.split.map(&:to_i)
a = q.times.map { gets.to_i }
points = Array.new(n, k - q)

q.times do |i|
  points[a[i] - 1] += 1
end

points.each { |p| puts p > 0 ? 'Yes' : 'No' }
