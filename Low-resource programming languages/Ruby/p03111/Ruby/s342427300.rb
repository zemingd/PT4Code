N, A, B, C = gets.strip.split.map(&:to_i)
T = [A, B, C]
L = N.times.map { gets.to_i }
INF = 10 ** 9
#puts L.inspect

def solve(index, a, b, c)
  if index == N
    if [a, b, c].min > 0
      return [(a-A), (b-B), (c-C)].map(&:abs).sum - 30
    else
      return INF
    end
  end
  resn = solve(index + 1, a, b, c)
  resa = solve(index + 1, a + L[index], b, c) + 10
  resb = solve(index + 1, a, b + L[index], c) + 10
  resc = solve(index + 1, a, b, c + L[index]) + 10
  [resn, resa, resb, resc].min
end

puts solve(0, 0, 0, 0)
