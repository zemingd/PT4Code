n,k = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
num2 = Array.new(n,"")
zero = Array.new(48, n)
ans = 0
res = 0
n.times{|i|
  num2[i] = (num[i].to_s(2)).split("")
  1.upto(num2[i].length){|j|
    zero[-j] -= 1 if num2[i][-j] == "1"
  }
}
47.times{|i|
  if ans+2**(47-i) <= k
    ans += 2**(47-i) if zero[i]*2 > n
  end
}
n.times{|i| res += ans ^ num[i]}
puts res
