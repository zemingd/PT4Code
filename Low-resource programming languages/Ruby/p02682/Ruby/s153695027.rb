A, B, C, K = gets.chomp.split.map(&:to_i)

max = 1*A+(-1)*(K-(A+B))

=begin
max = -9999999
(0..A).each do |a|
  #Bの値については最大値へ関与しないため省略
  (0..K-A).each do |c|
    sum = 1*a+(-1)*c
    max = sum if sum > max
  end
end
=end

print max