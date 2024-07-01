A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i
answer = 0

(0..A).each do |a|
  (0..B).each do |b|
    (0..C).each do |c|
      answer += 1 if a * 500 + b * 100 + c * 50 == X
    end
  end
end

puts answer