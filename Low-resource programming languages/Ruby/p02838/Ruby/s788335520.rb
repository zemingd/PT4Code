N,*as=$<.read.split.map(&:to_i)
MOD=10**9+7

ret = 0
0.upto(N-2) do |i|
    (i+1).upto(N-1) do |j|
        ret += as[i]^as[j]
    end
end

puts ret % MOD

