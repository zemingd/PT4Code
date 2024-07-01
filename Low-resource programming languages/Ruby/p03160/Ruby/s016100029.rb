N = gets.to_i
@hh = gets.chomp.split.map(&:to_i)

@dparr = Array.new(N)

def dp(to, cost)
  return cost if to == 0
  return @dparr[to] if @dparr[to]

  if to - 2 < 0
    @dparr[to] = dp(to - 1, cost) + (@hh[to] - @hh[to - 1]).abs
  else
    @dparr[to] = [dp(to - 1, cost) + (@hh[to] - @hh[to - 1]).abs, dp(to - 2, cost) + (@hh[to] - @hh[to - 2]).abs].min
  end
  return @dparr[to]
end

puts dp(N- 1, 0)