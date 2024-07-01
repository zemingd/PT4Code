n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)

f = d.shift
if f != 0
  p 0
  exit
end

ans = 1
last_node = 1
1.upto(n) do |i|
  num = d.count(i)
  break if num == 0
  ans *= last_node ** num
  ans %= 998244353
  last_node = num
end
p ans
