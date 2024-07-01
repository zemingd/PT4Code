K = gets.to_i

tot = 0
for a in (1..K)
  for b in (1..K)
    tmp = a.gcd(b)
    for c in (1..K)
      tot += tmp.gcd(c)
    end
  end
end
puts tot