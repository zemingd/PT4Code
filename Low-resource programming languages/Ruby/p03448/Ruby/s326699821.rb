A, B, C, X = 4.times.map { gets.to_i }
count = 0
(0..A).each do |a|
  (0..B).each do |b|
    count += 1 if X >= a*500 + b*100 && (X - a*500 - b*100) % 50 && (X - a*500 - b*100) / 50 <= C
  end
end
puts count
