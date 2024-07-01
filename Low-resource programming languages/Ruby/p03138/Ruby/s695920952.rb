n,k = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
check = 0
ans = 0
res = 0
47.downto(0){|i|
  next if ans+2**i > k
  check = num.count{|j| j[i] != 0}
  ans += 2**i if check*2 < n
}
n.times{|i| res += ans ^ num[i]}
puts res
