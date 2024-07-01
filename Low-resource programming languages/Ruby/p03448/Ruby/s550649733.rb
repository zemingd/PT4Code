A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

counter = 0

(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      sum = (500 * a) + (100 * b) + (50 * c)
      counter += 1 if X == sum
    end
  end
end

puts counter
