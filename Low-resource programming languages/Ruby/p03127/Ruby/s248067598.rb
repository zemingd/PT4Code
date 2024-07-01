n = gets.to_i
a = gets.split.map(&:to_i)
ans = a[0]
1.upto(n-1) do |i|
    ans = ans.gcd(a[i])
end
p ans