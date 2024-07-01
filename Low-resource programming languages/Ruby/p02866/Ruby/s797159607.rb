n = gets.to_i
d = gets.split.map(&:to_i)
if (d[0] != 0 || d.count(0) != 1)
  p 0
  exit
end
ans = 1
prev = 1
data = [*(1..(d.max))].each{|di|
  temp = d.count(di)
  ans *= (prev ** temp)
  prev = temp
}
p ans
