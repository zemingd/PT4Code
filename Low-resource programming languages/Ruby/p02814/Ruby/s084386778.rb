N, M = gets.split.map(&:to_i)
num = gets.split.map{|i| i.to_i/2}.inject(1){|r, i| r * i}
res = M / num
if res.odd?
  p res / 2 + 1
else
  p res / 2
end