n = gets.to_s.to_i

memo = Array.new(n + 1).map{Array.new(n + 1, nil)}

ans = 0
1.upto(n) do |i|
  1.upto(n) do |j|
    t = memo[i][j] ||= i.gcd(j)
    1.upto(n) do |k|
      ans += memo[t][k] ||= t.gcd(k)
    end
  end
end
 
puts ans