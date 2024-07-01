n = gets.to_s.to_i

a = Array.new(n+1,0)
1.upto(n) do |i|
  1.upto(n) do |j|
    a[i.gcd(j)] += 1
  end
end

ans = n * a[1]
2.upto(n) do |t|
  1.upto(n) do |k|
    ans += t.gcd(k) * a[t]
  end
end

puts ans