n, m, c = gets.split.map &:to_i
bs = gets.split.map &:to_i
ass = n.times.map {gets.split.map &:to_i}
cnt = n.times.count do |i|
  m.times.sum { |j| ass[i][j] * bs[j] } + c > 0
end
p cnt