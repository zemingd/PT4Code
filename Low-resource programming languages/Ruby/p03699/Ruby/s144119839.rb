n = gets.to_i
scores = readlines.map(&:to_i)
max_score = scores.inject(:+)
if max_score % 10 == 0
  non_10_scores = scores.map { |s| s % 10 == 0 ? nil : s }.compact
  if non_10_scores.empty?
    answer = 0
  else
    answer = max_score - non_10_scores.min
  end
else
  answer = max_score
end
puts answer
