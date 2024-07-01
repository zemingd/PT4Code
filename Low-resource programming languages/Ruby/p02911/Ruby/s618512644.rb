n, k, q = gets.split.map(&:to_i)
a = q.times.map { gets.to_i }
points = Array.new(n + 1, k)

a.each do |v|
  points[1..n].each.with_index(1) do |_, i|
    points[i] -= 1 if i != v
  end
end

puts points[1..n].map { |v| v > 0 ? 'Yes' : 'No' }