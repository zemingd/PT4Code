n=gets.to_i
numbers=gets.chomp.split.map(&:to_i).sort
minHp=numbers.min
warizanNumber = minHp
minHpIndex = 0
startIndex = 1
nowIndex = 1
indexMax = n -1
loop do
  tempMinHp = numbers[nowIndex] % warizanNumber
  if tempMinHp != 0 && tempMinHp < minHp
    minHp = tempMinHp
    minHpIndex = nowIndex
  end
  nowIndex += 1
  if nowIndex == indexMax
    startIndex += 1
    nowIndex = startIndex + 1
    warizanNumber = numbers[startIndex]
  end
  if nowIndex > indexMax 
    if minHpIndex != 0
      numbers.delete_at(minHpIndex)
      numbers = [minHp] + numbers
      startIndex = 1
      nowIndex = 1
      minHpIndex = 0
      warizanNumber = minHp
    else
      break
    end
    break if minHp == 1 || numbers.uniq.size == 1
  end
end
puts minHp