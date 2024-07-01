N = gets.to_i
@hh = gets.chomp.split.map(&:to_i)

def dp(to, cost)
  return cost if to == 0
  return dp(to - 1, cost) + (@hh[to] - @hh[to - 1]).abs if to - 2 < 0
  return [dp(to - 1, cost) + (@hh[to] - @hh[to - 1]).abs, dp(to - 2, cost) + (@hh[to] - @hh[to - 2]).abs].min
end

puts dp(N- 1, 0)