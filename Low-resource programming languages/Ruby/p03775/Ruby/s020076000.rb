# 約数を列挙する。配列形式で返す。
def divisors(n)
    ret = []
    i = 1
    while i*i <= n do
        if n % i == 0
            ret.push i
            ret.push n/i unless i*i == n
        end
        i += 1
    end
    ret.sort
end

# nの桁数を数える。 n<=0のときは0を返す。
def digits_cnt(n)
    cnt = 0
    ni = n
    while ni > 0 do
        ni /= 10
        cnt += 1
    end
    return cnt
end

# p divisors(gets.to_i)
# p digits_cnt(gets.to_i)

N = gets.to_i
i = 1
min_fab = 9999
while i*i <= N do
    if N % i == 0
        a = i
        b = N/i
        fab = [digits_cnt(a), digits_cnt(b)].max
        min_fab = fab if min_fab > fab
    end
    i += 1
end
puts min_fab