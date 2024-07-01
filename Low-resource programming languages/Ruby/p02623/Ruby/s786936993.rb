require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n,m,k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

acusum = Array.new(n+1)
bcusum = Array.new(m+1)

acusum[0] = 0
bcusum[0] = 0

1.upto(n) do |i|
  acusum[i] = acusum[i-1] + a[i-1]
end
1.upto(m) do |i|
  bcusum[i] = bcusum[i-1] + b[i-1]
end

ans = 0
i = n
j = 0

num = acusum[i] + bcusum[j]
while num > k
  i -= 1
  num = acusum[i] + bcusum[j]
end

while 0 <= i
  while j < m && acusum[i] + bcusum[j+1] <= k
    j += 1
  end
  # p [i,j, i+j]
  ans = [ans, i + j].max

  i -= 1
end

puts ans


