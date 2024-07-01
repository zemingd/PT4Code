n, max = gets.strip.split.map(&:to_i)
result = 0.0

n.times do |i|
  score = i + 1
  count = 0
  loop do
    break if score >= max
    score = score * 2
    count += 1
  end
  result += (1.0 / n * 0.5**count)
end

puts result