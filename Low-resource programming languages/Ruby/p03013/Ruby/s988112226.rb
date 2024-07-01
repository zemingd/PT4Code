f = []
f[0] = 0
f[1] = 1
2.upto(10005) do |i|
  f[i] = f[i-2] + f[i-1]
end

n, m = gets.chomp.split.map(&:to_i)
if m == 0
  puts f[n+1] % 1000000007
  exit
end

a = []
a[0] = -1
s = []
1.upto(m) do |i|
  a[i] = gets.chomp.to_i
  s[i] = a[i] - a[i-1] - 1
  if s[i] == 0
    puts 0
    exit
  end
end
s[m+1] = n - a[m]

ans = 1
1.upto(m+1) do |i|
  ans *= f[s[i]]
  ans %= 1000000007
end
puts ans
