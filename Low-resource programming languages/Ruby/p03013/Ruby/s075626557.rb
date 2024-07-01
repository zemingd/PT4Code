n, m = gets.split.map(&:to_i)
a = []
1.upto(m) do |i|
  a[i] = gets.to_i
end
a[0] = -1
a.push(n + 1)
b = []
1.upto(m + 1) do |i|
  if a[i] - a[i - 1] == 1
    puts "0"
    exit
  end
  b.push(a[i] - a[i - 1] - 1)
end
memo = []
memo[1] = 1
memo[2] = 1
3.upto(n + 1) do |i|
  memo[i] = memo[i - 1] + memo[i - 2]
  memo[i] %= 1_000_000_007
end
ans = 1
0.upto(b.size - 1) do |i|
  ans *= memo[b[i]]
  ans %= 1_000_000_007
end
puts ans