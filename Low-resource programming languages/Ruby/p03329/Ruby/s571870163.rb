n = gets.chomp.to_i

a = [1]

x = 6
while x <= 100000 do
  a.push(x)
  x *= 6
end

x = 9
while x <= 100000 do
  a.push(x)
  x *= 9
end

a = a.select{|x| x <= n}.sort

dp = [1e+9+7] * (n + 1)
dp[0] = 0

n.times do |x|
  a.each do |v|
    if x + v <= n then
      dp[x + v] = [dp[x + v], dp[x] + 1].min
    end
  end
end

puts dp[n].to_s