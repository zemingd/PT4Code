n = gets.to_i
d = gets.split.map(&:to_i)
if (d[0] != 0 || d.count(0) != 1)
  p 0
  exit
end
data = [*(1..(d.max))].map{|di|d.count(di)}
ans = 1
(data.length-1).times{|i|
  ans *= (data[i]**data[i+1])
}
p ans
