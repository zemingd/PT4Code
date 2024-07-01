N = gets.strip.to_i
a = gets.strip.split.map(&:to_i)
cum_a = [a[0]]
(1..N-1).each do |index|
  cum_a[index] = cum_a[index-1]+a[index]
end


result = nil
(0..N-2).each do |index|
  left_score = cum_a[index]
  right_score = cum_a.last-left_score
  diff = right_score - left_score
  score = diff.abs
  result = score if result.nil? || result > score
end

puts result
