N, M = gets.split.map(&:to_i)
X = gets.split.map(&:to_i)
distance = Array.new(M-1, 0)
ans = 0

if N < M
  X.sort!
  (M-1).times do |i|
    distance[i] = X[i+1] - X[i]
  end
  distance.sort!
  ans = distance[0, M-N].inject(:+)
end

puts ans