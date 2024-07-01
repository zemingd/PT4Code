N,*as=$<.read.split.map(&:to_i)
MOD=10**9+7

ret = 0

60.times do |i|
    n = as.count {|a| a[i] == 1 } * as.count {|a| a[i] == 0 }
    ret = (ret + n * 2.pow(i,MOD)) % MOD
end

puts ret

