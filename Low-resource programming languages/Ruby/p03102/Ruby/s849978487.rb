n,m,c=gets.split.map(&:to_i)
bNumbers = gets.split.map(&:to_i)
correctCount = 0
n.times do
  tempNumbers = gets.split.map(&:to_i)
  sum = c
  m.times.map{|index| sum += tempNumbers[index] * bNumbers[index]}
  correctCount += 1 if sum > 0
end
puts correctCount