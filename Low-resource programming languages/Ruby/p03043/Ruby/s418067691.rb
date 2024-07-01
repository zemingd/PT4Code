n,k = gets.chomp.split.map(&:to_i)

# 確率の和を愚直に取る
ans = 0
for i in 1..n
    saikoro_kakuritu = 1.0/n
    if i >= k
        ans += saikoro_kakuritu
    else
        x = k*1.0/i
        kaisuu = (Math.log10(x)/Math.log10(2.0)).ceil
        # p kaisuu
        kakuritu = saikoro_kakuritu * ((1/2.0)**kaisuu)
        ans += kakuritu
    end
end
print ans