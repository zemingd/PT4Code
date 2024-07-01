# nCk 前処理メモ化
MOD = 10 ** 9 + 7
N = 2000
@fac = [1, 1]
@inv = [1, 1]
@finv = [1, 1]

(2..N).each do |i|
  @fac[i] = @fac[i - 1] * i % MOD
  @inv[i] = MOD - @inv[MOD % i] * (MOD / i) % MOD
  @finv[i] = @finv[i - 1] * @inv[i] % MOD
end

def nCk(n, k)
  return 0 if n < k || n < 0 || k < 0
  @fac[n] * (@finv[k] * @finv[n - k] % MOD) % MOD
end

n = gets.to_i
balls = gets.split.map(&:to_i)

memo = [0, 0, 1]
3.upto(200_000) do |i|
  memo[i] = memo[i - 1] * i / (i - 2)
end

hash_memo = Hash.new(0)

balls.each do |ball|
  hash_memo[ball] += 1
end

sum = 0
balls.uniq.each do |ball|
  sum += memo[hash_memo[ball]]
end

# puts sum

balls.each do |ball|
  # original_count = hash_memo[ball]
  # original = memo[hash_memo[ball]]
  # deduction = original * original_count
  deduction = memo[hash_memo[ball]]
  increment = memo[hash_memo[ball] - 1]
  puts sum - deduction + increment
end

