N, K = gets.split(' ')
ans = 0
N.to_i.times do |i|
    t = i+1
    p = 1
    while t < K.to_i do
        t = t*2
        p = p*Rational(1,2)
    end
    ans += p
end

print sprintf("%.12f", ans/N.to_i)