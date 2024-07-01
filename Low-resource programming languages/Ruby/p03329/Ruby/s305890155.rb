N = gets.to_i

def f(v, b)
  res = 0
  while v.positive?
    v, r = v.divmod(b)
    res += r
  end
  res
end

ans = 1.0 / 0
0.upto(N) do |k|
  ans = [ans, f(k, 6) + f(N - k, 9)].min
end

puts ans
