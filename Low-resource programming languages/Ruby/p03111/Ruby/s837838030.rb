N, A, B, C = gets.strip.split.map(&:to_i)
T = [A, B, C]
L = N.times.map { gets.to_i }
INF = 10 ** 9

def solve(index, t)
  if index == N
    if t.min > 0
      return 3.times.map { |i| (T[i] - t[i]).abs }
        .reduce(:+) - 30
    else
      return INF
    end
  end
  tmp = []
  tmp.push(solve(index + 1, [t[0], t[1], t[2]]))
  3.times do |i|
    next_t = 3.times.map do |j|
      # i: 足すところ
      if i == j
        t[j] + L[index]
      else
        t[j]
      end
    end
    tmp.push(solve(index + 1, next_t) + 10)
  end
  tmp.min
end

puts solve(0, 3.times.map{0})
