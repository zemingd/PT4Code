N = gets.to_i
A = gets.split.map(&:to_i)

B = Array.new(100001, 0)
A.each do |a|
  B[a] += 1
end

ans = 0
(0...100000).each do |i|
  x = B[i - 1] + B[i] + B[i + 1]
  ans = x if x > ans
end
puts ans
  