N, M = gets.split.map(&:to_i)
x = gets.split.map(&:to_i).sort

if N >= M
  puts 0
  exit
end

diff = []
0.upto(M-2) do |i|
  diff << x[i + 1] - x[i]
end

p diff.sort[0..N].inject(:+)