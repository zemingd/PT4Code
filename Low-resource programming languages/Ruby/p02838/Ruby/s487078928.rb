n = gets.to_i
l = gets.chop.split.map(&:to_i)

mod = 10**9+7

ones = [0]*60
n.times do |i|
    x = l[i]
    60.times do |j|
        ones[j] += (x>>j)&1
    end
end

ans = 0
60.times do |i|
    ans += ((n-ones[i])*ones[i]*2**i)%mod
end
puts ans%mod