# 5桁固定なので1桁目と5桁目、2桁目と4桁目を比較して同じであればいい
a, b = gets.split.map{|i| i.to_i}
ans = 0
(a..b).each do |i|
    x, y = i%10, i/10000
    p, q = (i/10)%10, (i/1000)%10
    if x==y && p==q then
        ans+=1
    end
end

puts ans