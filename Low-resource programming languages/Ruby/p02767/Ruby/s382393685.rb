N = gets.to_i
X = gets.split.map(&:to_i)
ans = 1 << 60
(1..100).each do |x|
  sum = 0
  X.each do |x2|
    sum += (x - x2) ** 2
  end
  ans = sum if sum < ans
end
puts ans