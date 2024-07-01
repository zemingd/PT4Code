def comb(n, x)
  if x != 2
    result = 0
    for i in ((n - (x - 1) * 9) < 0 ? 0: (n - (x - 1) * 9))..(n > 9 ? 9: n)
      result += comb(n - i, x - 1)
    end
    return result
  else
    return (n < 9 ? (n + 1): (19 - n))
  end
end
while (n = gets)
  puts comb(n.to_i, 4)
end