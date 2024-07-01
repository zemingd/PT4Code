n,k = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
check = 0
ans = 0
res = 0
40.downto(0){|i|
  if ans+2**i <= k
    check = 0
    for j in 0..n-1
      if (num[j] / (2**i)) % 2 == 1
        check += 1
      end
    end
    ans += 2**i if check*2 < n
  end
}
n.times{|i| res += ans ^ num[i]}
puts res
