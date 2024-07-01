lines = $stdin.read
array = lines.split("\n")
N = array[0].to_i
MAX_N = 110000

dp = Array.new(MAX_N, N+1)
dp[0] = 0

for n in 0..N
  pow6 = 1
  loop {
    dp[n+pow6] = [dp[n+pow6], dp[n]+1].min
    pow6 *= 6
    break if n + pow6 > N
  }
  pow9 = 1
  loop {
    dp[n+pow9] = [dp[n+pow9], dp[n]+1].min
    pow9 *= 9
    break if n + pow9 > N
  }
end

puts dp[N]