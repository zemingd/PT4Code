require 'prime'

MAX = 10 ** 6
n = gets.to_i
a_n = gets.split.map(&:to_i)

# 全GCDが1でない場合どちらでもない
all_gcd = a_n[0]
1.upto(n-1) do |i|
    all_gcd = all_gcd.gcd(a_n[i])
end
if all_gcd > 1
    puts "not coprime"
    exit 0
end

## ============
## 以下は全GCDは常に1前提
## ============

memo = Array.new(MAX + 1, 0)
primes = Array.new(MAX + 1, 0)
Prime.each(MAX) do |i|
    primes[i] = 1
end

a_n.sort!
a_n.each do |a|
    # 素数はすでに計算済みなので素因数分解を省略
    if primes[a] == 1
        if memo[a] == 1
            puts "setwise coprime"; exit 0
        end

        memo[a] = 1
    else
        Prime.prime_division(a).each do |x, cnt|
            if memo[x] == 1
                puts "setwise coprime"; exit 0
            end
            memo[x] = 1
        end
    end
end

puts "pairwise coprime"
