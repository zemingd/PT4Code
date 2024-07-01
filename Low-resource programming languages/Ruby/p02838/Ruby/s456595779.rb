MOD = 10 ** 9 + 7
N = gets.to_i
A = gets.split.map(&:to_i)

ans = 0
61.times do |i|
  cnt = 0
  A.each do |a|
    if a >> i & 1 == 1
      cnt += 1
    end
  end
  now = cnt * (N - cnt) % MOD
  now = (now * 2 ** i) % MOD 
  ans += now
  ans %= MOD
end
p ans