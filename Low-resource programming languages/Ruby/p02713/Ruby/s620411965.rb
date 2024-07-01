k = gets.chomp.to_i

ans = 0
(1..k).to_a.repeated_permutation(3) do |a|
  ans += a[0].gcd(a[1].gcd(a[2]))
end
p ans
