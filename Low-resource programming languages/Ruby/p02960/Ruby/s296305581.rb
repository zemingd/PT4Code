n = gets.chomp.split("").reverse
dp = Array.new(13,0)
dp[0]=1
nextdp = Array.new(13,0)
n.each_with_index{|ni, keta|
    nextdp.fill(0)
if ni == "?" then
    10.times{|n|
        mod = (n* (10**keta))%13
        13.times{|t|
            nextdp[(mod+t)%13] += dp[t]
            nextdp[(mod+t)%13] %= 1000000007
        }
    }
else
    mod = (ni.to_i* (10**keta))%13
    13.times{|t|
        nextdp[(mod+t)%13] += dp[t]
        nextdp[(mod+t)%13] %= 1000000007
    }
end
dp = nextdp
}
puts dp[5]
