def fact(n)
  return 1 if n === 0
  n * fact(n-1)
end
def pattern(n)
  if n>2
    return fact(n)/(2 * fact(n-2))
  else
    return fact(n)/2
  end
end

N,M = gets.split.map(&:to_i)
puts(pattern(N) + pattern(M))