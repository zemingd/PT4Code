n,x = gets.split.map(&:to_i)
a = gets.split.map{|i|i.to_i-x}.sort
ans = a[0]
for i in 1..n-1
    ans = ans.gcd(a[i]-a[i-1])
end
puts ans.abs