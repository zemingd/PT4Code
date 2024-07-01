n, k, q = gets.split.map(&:to_i)
point = Array.new(n, k)
q.times do
  point[gets.to_i - 1] += 1
end
point.each do |i|
  puts i - q > 0 ? "Yes" : "No"
end