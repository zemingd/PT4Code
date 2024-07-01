n = gets.to_s.to_i

memo = Array.new(n + 1){|i| Array.new(n + 1){|j| i.gcd(j) }}

ans = 0
1.upto(n) do |i|
  1.upto(n) do |j|
    t = memo[i][j]
    if 1 == t
      ans += n
      next
    end
    1.upto(n) do |k|
      ans += memo[t][k]
    end
  end
end
 
puts ans