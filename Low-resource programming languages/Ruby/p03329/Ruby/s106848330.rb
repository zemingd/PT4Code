N = gets.to_i

res = N

0.upto(N) do |i|
  cc = 0
  t = i
  while t > 0
    cc += t % 6
    t /= 6
  end
  t = N - i
  while t > 0
    cc += t % 9
    t /= 9
  end

  if res > cc
    res = cc
  end
end

p res
