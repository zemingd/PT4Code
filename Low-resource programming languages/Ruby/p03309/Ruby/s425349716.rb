n=gets.to_i
as=gets.split.map(&:to_i)

sum = 0
0.upto(as.length-1) do |i|
  as[i] -= (i+1)
  sum += as[i]
end

avg = sum / n


bs = []
(avg-5).upto(avg+5) do |i|
  bs << as.map {|a| (a-i).abs}.inject(&:+)
end

p bs.min