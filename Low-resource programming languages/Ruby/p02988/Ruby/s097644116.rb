N = gets.chomp.to_i
P = gets.chomp.split(" ").map(&:to_i)

cnt = 0
1.upto(N-2) do |i|
  cnt += 1 if (P[i-1] < P[i] && P[i] < P[i+1]) || (P[i-1] > P[i] && P[i] > P[i+1])
end
puts cnt
