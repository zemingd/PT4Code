n,k = gets.chomp.split(' ').map(&:to_i)
ans = 0
f = 0
i = 1
while i < (n + 1)
  j = 2
  while i*j <= k
    # p "i:#{i} j:#{j}"
    j *= 2
  end
  ans += n * j
  # p ans
  # p "ans reset"
  f += Rational(1, ans)
  ans = 0
  i += 1
end
p f.to_f