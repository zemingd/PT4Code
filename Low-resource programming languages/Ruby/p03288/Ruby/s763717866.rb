S = gets.chomp.split('')
N = S.length

MOD = 10**9 + 7

dp = Array.new(N + 1, 0).map { Array.new(4, 0) }
dp[0][3] = 1

a = 0
ab = 0
abc = 0
pattern = 1

(1..N).each do |i|
  str = S[i-1]
  if str == 'A'
    a += pattern
  elsif str == 'B'
    ab += a
  elsif str == 'C'
    abc += ab
  elsif str == '?'
    a = a * 3 + pattern
    ab = ab * 3 + a
    abc = abc * 3 + ab
    pattern *= 3
  end
end

puts abc % MOD