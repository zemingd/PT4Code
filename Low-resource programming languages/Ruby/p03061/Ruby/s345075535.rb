N = gets.to_i
As = gets.split.map(&:to_i)
Bs = As.reverse

memo = []
memo[0] = As[0]
(N-1).times{|x|
    memo[x+1] = memo[x].gcd(As[x+1])
}
memo2 = []
memo2[0] = Bs[0]
(N-1).times{|x|
    memo2[x+1] = memo2[x].gcd(Bs[x+1])
}

def gcd_skip_i(i,memo,memo2)
    if (i === 0) then
        return memo2[N-2]
    elsif (i === N-1) then
        return memo[N-2]
    else
        return memo[i-1].gcd(memo2[(N-1) - (i+1)])
    end
end

ans2 = 0
N.times{|x|
    ans2 = [ans2, gcd_skip_i(x,memo,memo2)].max
}

puts ans2
