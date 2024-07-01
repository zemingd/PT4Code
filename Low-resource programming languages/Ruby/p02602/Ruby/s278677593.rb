n, k = gets.chomp.split(/\s+/).map(&:to_i)
scores = gets.chomp.split(/\s+/).map(&:to_i)

prev_sum = 0
sum = 0
scores.each_with_index do |s, i|
  if i == 0
    sum = s
  else
    prev_sum = sum
    sum = sum * s
  end
  if i >= k
    sum = sum / scores[i-k]
    puts prev_sum < sum ? "Yes" : "No"
  end
end