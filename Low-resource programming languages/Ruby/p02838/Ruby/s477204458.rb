N,*as=$<.read.split.map(&:to_i)
MOD=10**9+7

def comb2(n)
    n * (n-1) / 2
end

ret = 0

60.times do |i|
    ones = as.count {|a| a[i] == 1 }
    zeros = as.count {|a| a[i] == 0 }
    n = comb2(ones+zeros) - comb2(ones) - comb2(zeros)
    ret += n * 2.pow(i,MOD) % MOD
end

puts ret % MOD

