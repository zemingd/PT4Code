MOD = 10 ** 9 + 7
N = gets.to_i
A = gets.split.map(&:to_i)

#N = 3 * 10 ** 5
#A = N.times.map{rand((2**57)..(2**60))}

ans = 0
61.times do |i|
  cnt = 0
  N.times do |j|
    if A[j][i] == 1
      cnt += 1
    end
  end
  now = (cnt * (N - cnt)) % MOD
  now = (now * 2 ** i) % MOD
  #i.times{ now = (now*2) % MOD }
  ans += now
  ans %= MOD
end
p ans