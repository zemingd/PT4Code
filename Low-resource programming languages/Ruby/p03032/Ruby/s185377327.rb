def min2(a,b)
    return a>b ? b : a
end
def max2(a,b)
    return a<b ? b : a
end

N,K = gets.split.map{|i| i.to_i}

V = gets.split.map{|i| i.to_i}
NKmin = N<K ?  N : K
mx = 0

for left in 0..N
    for right in 0..NKmin-left
        lg = V[0...left]
        rg = V[N-right...N]
        lr = lg+rg
        lr.sort!
        score = lr.inject(:+)
        if score.nil?
            score=0
        end
        disposal = min2(K-lr.length,lr.length)
        lr2 = lr[0...disposal]
        for i in lr2
            if i<0
                score -= i
            else
                break
            end
        end

        mx = max2(mx,score)
    end

end
puts mx
