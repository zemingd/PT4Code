N,*as=$<.read.split.map(&:to_i)
MOD=10**9+7

ret = 0

60.times do |i|
    x = y = 0
    as.each do |a|
        a[i]==1 ? x+=1 : y+=1
    end
    ret += (x*y) * (2**i) % MOD
end

puts ret % MOD

