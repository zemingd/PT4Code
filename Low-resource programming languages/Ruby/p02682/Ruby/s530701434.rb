A, B, C, K = gets.split.map(&:to_i)


if K <= A + B
  if A > K
    puts K
  else
    puts A
  end
else
  if C > K - (A + B)
    puts A - (K - (A + B))
  else
    puts A - C
  end
end
