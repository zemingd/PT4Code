K = gets.to_i
ary = [0]
for a in 1..K
  for b in 1..K
    for c in 1..K
      ary.unshift(a.gcd(b).gcd(c))
    end
  end
end
puts ary.sum