N, A, B = gets.split.map(&:to_i)

if (A - B).abs.even?
  puts (B - A).abs / 2
else
  a, b = [A, B].sort

  ans = 0

  if a - 1 <= N - b
    ans += a - 1 + 1
    b -= a
    a = 1
  else
    ans += N - b + 1
    a += N - b + 1
    b = N
  end

  ans += (a - b).abs / 2

  puts ans
end
