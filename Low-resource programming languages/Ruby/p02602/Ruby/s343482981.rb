n, k = gets.chomp.split.map(&:to_i)
scores = gets.chomp.split.map(&:to_i)

(n - k).times do |x|
  target_score = 1
  k.times do |y|
    target_score = target_score * scores[k + x - y]
  end

  previous_score = 1
  k.times do |z|
    previous_score = previous_score * scores[k + x - z - 1]
  end

  if target_score > previous_score
    puts "Yes"
  else
    puts "No"
  end
end