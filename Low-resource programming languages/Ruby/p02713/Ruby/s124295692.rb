n = gets.to_s.to_i
 
ans = 0
1.upto(n) do |i|
  1.upto(n) do |j|
    1.upto(n) do |k|
      ans += i.gcd(j).gcd(k)
    end
  end
end
 
puts ans