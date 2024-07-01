A, B, C, X = 4.times.map { gets.to_i }

output = 0

(0..A).each do |a|
  break if a > A
  (0..B).each do |b|
    break if b > B
    sum = 0
    sum += 500 * a + 100 * b
    if X == sum
      output += 1
    elsif X > sum
      output += 1 if X <= sum + 50 * C
    end
  end
end

puts output
