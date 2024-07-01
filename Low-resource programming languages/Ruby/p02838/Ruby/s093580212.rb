MOD = 10 ** 9 + 7

n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
bit = a.max.to_s(2).length

ans = 0
num1 = Array.new(bit,0)
for j in 0..bit-1
  for i in 0..n-1
    num1[j] += a[i][j]
  end
  ans += num1[j] * (n-num1[j]) * (2 ** j)
end

puts ans % MOD