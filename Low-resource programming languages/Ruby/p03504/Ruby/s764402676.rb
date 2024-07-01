MAX_N = 10 ** 5

N, C = gets.split.map(&:to_i)

imos = Array.new(C) { Array.new(MAX_N+2, 0) }
N.times do
  s, t, c = gets.split.map(&:to_i)
  imos[c-1][s] += 1
  imos[c-1][t+1] -= 1
end
C.times { |i| (MAX_N+1).times { |j| imos[i][j+1] += imos[i][j] } }
C.times { |i| imos[i].map! {|x| x != 0 ? 1 : 0 } }

sums = Array.new(MAX_N+2, 0)
(0..MAX_N+1).each { |i| C.times { |j| sums[i] += imos[j][i] } }
puts sums.max
