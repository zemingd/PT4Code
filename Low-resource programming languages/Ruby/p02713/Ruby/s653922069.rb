k = gets.to_i

ans = 0
1.upto(k) do |i|
  1.upto(k) do |j|
    n = i.gcd(j)
    1.upto(k) do |k|
      ans += n.gcd(k)
    end
  end
end
puts ans