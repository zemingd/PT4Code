@N, @A, @B, @C = gets.strip.split.map(&:to_i)
@sticks = @N.times.map { gets.strip.to_i }

def chkmin(a, b) a < b ? a : b end

INF = 100000

def dfd(n, a, b, c)
  if n == @N
    if a > 0 && b > 0 && c > 0
      return (@A - a).abs + (@B - b).abs + (@C - c).abs
    else
      return INF
    end
  end

  res = dfd(n + 1, a, b, c)

  res = chkmin(res, dfd(n + 1, a + @sticks[n], b, c) + (a > 0 ? 10 : 0))
  res = chkmin(res, dfd(n + 1, a, b + @sticks[n], c) + (b > 0 ? 10 : 0))
  res = chkmin(res, dfd(n + 1, a, b, c + @sticks[n]) + (c > 0 ? 10 : 0))
 
  return res
end

puts dfd(0, 0, 0, 0)
