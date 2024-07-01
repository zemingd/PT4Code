K = gets.to_i

ans = 0
1.step(K) do |a|
  1.step(K) do |b|
    n = a.gcd(b)
    1.step(K) do |c|
      ans += n.gcd(c)
    end
  end
end
puts ans
