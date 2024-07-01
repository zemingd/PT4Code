A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

result = 0

(0..A).each do |i|
  (0..B).each do |j|
    (0..C).each do |k|
      total = 500 * i + 100 * j + 50 * k
      result += 1 if total == X
    end
  end
end

puts result