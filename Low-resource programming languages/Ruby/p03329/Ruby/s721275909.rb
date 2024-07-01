N = gets.to_i
INF = N + 1
# dp = Array.new(N+1,INF)
# dp[0] = 0
dp = (0..N).to_a
n = N
a = 1
b = 1
ans = 0
# stack = [1]
stack = []
# binding.pry
while n / (a * 9) >= 1
  stack << a *= 9
end
# p a
while n / (b * 6) >= 1
  stack << b *= 6
end
stack.sort_by!{|x|x}
# p stack
stack.size.times do |i|
  stack[i].upto(N) do |j|
    dp[j] = [dp[j], dp[j - stack[i]] + 1].min
  end
end
puts dp[N]