N, M = gets.split.map &:to_i
aaa = gets.split.map(&:to_i).sort
while g = gets&.split&.map(&:to_i)
  g[0].times do
    aaa << g[1]
  end
end
aaa.sort!
sum = 0
N.times do |i|
  sum = aaa[N - i]
end
puts sum
