A = gets.to_i
B = gets.to_i
C = gets.to_i
X = gets.to_i

ans = 0
(0..A).each do |a|
  s1 = 500 * a
  (0..B).each do |b|
    s2 = 100 * b
    (0..C).each do |c|
      s3 = 50 * c
      ans += 1 if s1 + s2 + s3 == X
    end
  end
end
p ans

