numbers=[]
gets.to_i.times do
  numbers << gets.to_i - 1
end
moveCount=1
index=0
loop do
  index = numbers[index]
  break if index == 1 || moveCount == numbers.length
  moveCount+=1
end
puts index == 1 ? moveCount : -1