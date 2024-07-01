N = gets.to_i
W = gets.split.map &:to_i

T = W.inject(:+)
D = Array.new(N+1)
D[0] = 0
N.times do |i|
  D[i+1] = D[i] + W[i]
end

min = 100000
1.upto(N-1) do |t|
  d = (T - 2 * D[t]).abs
  min = d if d < min
end
p min
