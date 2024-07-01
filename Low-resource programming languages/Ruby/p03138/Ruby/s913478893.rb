n,k = gets.split.map(&:to_i)
num = gets.split.map(&:to_i)
num2 = Array.new(n,"")
zero = Array.new(48, n)
ans = 0
res = 0
n.times{|i|
  num2[i] = (num[i].to_s(8)).split("")
  1.upto(num2[i].length){|j|
    if num2[i][-j] == "1"
      zero[(-j*3)+2] -= 1
    elsif num2[i][-j] == "2"
      zero[(-j*3)+1] -= 1
    elsif num2[i][-j] == "3"
      zero[(-j*3)+2] -= 1
      zero[(-j*3)+1] -= 1
    elsif num2[i][-j] == "4"
      zero[(-j*3)] -= 1
    elsif num2[i][-j] == "5"
      zero[(-j*3)+2] -= 1
      zero[(-j*3)] -= 1
    elsif num2[i][-j] == "6"
      zero[(-j*3)+1] -= 1
      zero[(-j*3)] -= 1
    elsif num2[i][-j] == "7"
      zero[(-j*3)+2] -= 1
      zero[(-j*3)+1] -= 1
      zero[(-j*3)] -= 1
    end
  }
}
48.times{|i|
  if ans+2**(47-i) <= k
    ans += 2**(47-i) if zero[i]*2 > n
  end
}
n.times{|i| res += ans ^ num[i]}
puts res
