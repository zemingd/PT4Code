A, B, C, X = 4.times.map { gets.to_i }

output = 0

(0..A).each do |a|
  break if a > A
  (0..B).each do |b|
    break if b > B
    (0..C).each do |c|
      break if c > C
      output += 1 if (500 * a + 100 * b + 50 * c) == X
    end
  end
end

puts output
