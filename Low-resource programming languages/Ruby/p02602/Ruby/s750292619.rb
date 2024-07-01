n, k=gets.strip.split(" ").map(&:to_i)
as =gets.strip.split(" ").map(&:to_i)

scores = []
n.times do |i|
  if i + 1 >= k
    scores.push as[i+1-k..i].inject(1) {|a, sum| a * sum}
  end
end

scores.each_with_index do |score, i|
  next if i == 0
  puts scores[i] > scores[i-1] ? 'Yes' : 'No'
end
