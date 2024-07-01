A, B, C, X = 4.times.map { gets.to_i }

output = 0

(0..A).each do |a|
  (0..B).each do |b|
    left   = sum - (500 * a + 100 * b)
    output += 1 if left >= 0 && left % 50 == 0 && left / 50 <= C
  end
end

puts output
