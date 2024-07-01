K = gets.chomp.to_i
ans = 0
1.upto(K) do |i|
  1.upto(K) do |j|
    g1 = i.gcd(j)
    1.upto(K) do |k|
      ans += g1.gcd(k)
    end
  end
end
puts ans
