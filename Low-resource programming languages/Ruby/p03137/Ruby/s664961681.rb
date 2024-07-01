N, M = gets.split.map(&:to_i)
X = gets.split.map(&:to_i).sort!

if N >= M
  puts 0
else
  d = []
  1.step(M-1) {|i| d << X[i] - X[i-1] }
  d.sort!.pop(N-1)
  puts d.inject(:+)
end
