# N
# X1, XN
#Pに参加するには(Xi - P)^2を消費
#消費の最小化

N = gets.to_i
X = gets.split.map(&:to_i)
ave = X.inject(0){|sum_of_number, number| sum_of_number + number} / X.length
dis = 0
puts ave
ave += 1

N.times do |i|
  dis += (X[i] - ave) ** 2
end
puts dis