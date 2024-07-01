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
  if temp == 0
    p 0
    exit
  end
  ans *= (prev ** temp) if prev > 1
  prev = temp
}
p ans
