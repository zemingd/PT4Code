k = gets.to_i

ans = [*1..k].repeated_permutation(3).inject(0) do |r, (a, b, c)|
  r + a.gcd(b.gcd(c))
end

puts ans
