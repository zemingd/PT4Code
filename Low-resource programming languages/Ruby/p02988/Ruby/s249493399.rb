N = gets.to_i
P = gets.split.map(&:to_i)

c = 0
0.upto(N - 3) do |i|
  c += 1 if [P[i], P[i + 1], P[i + 2]].sort[1] == P[i + 1]
end
puts c