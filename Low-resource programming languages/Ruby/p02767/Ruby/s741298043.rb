# N
# X1, XN
#Pに参加するには(Xi - P)^2を消費
#消費の最小化

N = gets.to_i
X = gets.split.map(&:to_i)
dis = []

(1..100).each do |i|
  cost = 0
  X.each do |x|
    cost += (i - x) ** 2
  end
  dis << cost
end
puts dis.min
