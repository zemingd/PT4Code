def f(a, b, c)
  r = 0
  N.times{
    r += a
   
    # p [a, b, c, r]
    return true if r % b == c
  }
  false
end

N = 100
A, B, C = gets.split.take(3).map(&:to_i)
puts f(A, B, C) ? :YES : :NO
