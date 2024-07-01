n, k, q = gets.split.map(&:to_i)
scores = Array.new(n, k - q)
q.times do
  scores[gets.to_i-1] += 1
end
scores.each do |score|
  puts score > 0 ? 'Yes' : 'No'
end
