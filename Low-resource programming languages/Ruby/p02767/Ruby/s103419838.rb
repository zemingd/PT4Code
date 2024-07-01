n = gets.to_i
# s = gets.chomp
x = gets.split.map(&:to_i)

c = 0
ans = (100 - 0) ** 2 * 100 + 1000000000000
101.times do |i|
    c = 0
    x.each do |y|
        c += ( y - i ) ** 2
    end
    ans = c if ans > c
end

p ans

# 以下、D問題の途中
# # refer to https://qiita.com/k_karen/items/653ba7025a92f5ac1363

# ONE = '1'.freeze
# MOD = (10**9) + 7

# def inv(x)
#   res = 1 # 最終的に x^(MOD-2) になる変数です
#   beki = x # x^2^n を格納する変数です
#   # MOD-2の２進数展開を下位のbitから見ていきます。
#   (MOD - 2).to_s(2).reverse.chars do |digest|
#     # bitが立っている <=> digest == ONE 
#     # なら resにbekiを掛けます。
#     # ここで、掛け算は計算の都度MODを取れます
#     res = (beki * res) % MOD if digest == ONE
#     # 次のループに備えて、自乗を計算します。
#     # 計算の都度MODを取れます(とても大事なので二回言います)
#     beki = (beki * beki) % MOD
#   end
#   res
# end

# def fact(s, e)
#   (s..e).reduce(1) { |r, i| (r * i) % MOD }
# end

# def nCk(n, k)
#   (fact(k + 1, n) * inv(fact(1, n - k) % MOD)) % MOD
# end

# def cmb(n, r, p):
#     if (r < 0) or (n < r):
#         return 0
#     r = min(r, n - r)
#     return fact[n] * factinv[r] * factinv[n-r] % p

# p = 10 ** 9 + 7
# N = 10 ** 6  # N は必要分だけ用意する
# fact = [1, 1]  # fact[n] = (n! mod p)
# factinv = [1, 1]  # factinv[n] = ((n!)^(-1) mod p)
# inv = [0, 1]  # factinv 計算用
 
# for i in range(2, N + 1):
#     fact.append((fact[-1] * i) % p)
#     inv.append((-inv[p % i] * (p // i)) % p)
#     factinv.append((factinv[-1] * inv[-1]) % p)

# def f(t,k,mod):
#     res = 1
#     for i in range(k):
#         res = res * t % mod
#         t -= 1
#     return res
        

# mod = 10 ** 9 + 7
# # n = gets.to_i
# # s = gets.chomp
# # n,a,b = gets.split.map(&:to_i)
# n, a, b = map(int, input().split())
# cnt_a = cnt_b = 0

# ans = 1
# for i in range(n):
#     ans = ans * 2 % mod
# ans -= 1
# # p [n,ans]
# print(ans)
# print(f(n,a,mod))
# print(f(n,b,mod))
# # print(f(4,1,mod))
# # p nCk(a,n)
# # p fact(b,n)
# ans = (ans - cmb(n, a, mod)) % mod
# ans = (ans - cmb(n, b, mod)) % mod

# print(ans)