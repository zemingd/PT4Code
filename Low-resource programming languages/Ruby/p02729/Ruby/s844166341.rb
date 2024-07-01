def fact(n)
  if n < 2
    1
  else
    n * fact(n-1)
  end
end

N, M = gets.split.map(&:to_i)
puts fact(N) / (2 * fact(N - 2)) + fact(M) / (2 * fact(M - 2))