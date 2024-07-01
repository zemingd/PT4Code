require 'matrix'
N, D = gets.split.map &:to_i
x = []
N.times do
  x << Vector.elements(gets.split.map &:to_i)
end
cnt = 0
(N-1).times do |i|
  ((i+1)..(N-1)).each do |j|
    dist = ((x[i] - x[j]).norm)
    cnt += 1 if dist - dist.to_i == 0
  end
end
puts cnt