N, M = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)
a.sort!.reverse!

#数字iを構成するマッチの本数b[i]とする 1-index
b = [0,2,5,5,4,5,6,3,7,6]

#使う数字をたかだか4種類に削減
if a.include?(5)
  [2,3].each do |i|
    a.delete(i)  if a.include?(i)
  end
end

if a.include?(9) && a.include?(6)
  a.delete(6)
end

if (a.include?(1) || a.include?(7)) && a.include?(9)
  a.delete(9)
end

if a.include?(1) && a.include?(4)
  a.delete(4)
end

#DPで解く
#dp[i] = ちょうどi本使うときに達成可能な桁数の最大値
dp = Array.new(N+1)
dp[0] = 0

1.upto(N) do |i|
  max = -Float::INFINITY
  0.upto(a.length-1) do |j|
    next if i-b[a[j]] < 0
    tmp = dp[i-b[a[j]]]
    max = tmp if tmp > max
  end
  dp[i] = 1 + max
end

#最適解の復元
cur = N

while cur != 0 do
  0.upto(a.length-1) do |i|
    if dp[cur] == 1 + dp[cur - b[a[i]]]
      print a[i]
      cur -= b[a[i]]
      break
    end
  end
end

puts "\n"
