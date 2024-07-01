n, k, q = gets.chomp.split.map{|a| a.to_i}

scores = Array.new(n, 0)

q.times do
  i = gets.chomp.to_i - 1
  scores[i] += 1
end

scores.each do |score|
  point = k - q + score
  if point > 0
    puts "Yes"
  else
    puts "No"
  end
end
