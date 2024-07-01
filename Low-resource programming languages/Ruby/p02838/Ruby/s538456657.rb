N,*as=$<.read.split.map(&:to_i)
MOD=10**9+7

ret = 0

60.times do |i|
    x = y = 0
    as.each do |a|
        a[i]==1 ? x+=1 : y+=1
    end
    # n = as.count {|a| a[i] == 1 } * as.count {|a| a[i] == 0 }
    n = x*y
    ret = (ret + n * 2**i) % MOD
end

puts ret

