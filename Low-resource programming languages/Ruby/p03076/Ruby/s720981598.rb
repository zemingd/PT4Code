a = 5.times.map{gets.to_i}
ans = 0
5.times do |i|
    ans += (a[i]+9)/10*10
end
mn = 10
5.times do |i|
    mn = a[i]%10 if a[i]%10 > 0 && a[i]%10 < mn
end
ans -= 10-mn
puts ans