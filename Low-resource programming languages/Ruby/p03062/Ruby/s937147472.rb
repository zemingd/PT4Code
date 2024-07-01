num = gets.to_i
n = gets.split.map(&:to_i)
check = 0
ans = 0
num.times{|i| check += 1 if n[i] < 0}
if check % 2 == 0
  num.times{|i| ans += n[i].abs}
else
  num.times{|i|
    ans += n[i].abs
    n[i] = n[i].abs
  }
  n.sort!
  ans -= n[0]*2
end
puts ans
