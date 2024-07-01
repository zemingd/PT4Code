numbers = gets.chomp
nowString = 0
numbersLength = numbers.length
nowDiffNumber = 0
numbersLength.times do |number|
  break if numbersLength - 3 < number
  tempString = numbers.slice(number,3)
  tempDiffNumber = (753 - tempString.to_i).abs
  if nowString == 0 || (nowDiffNumber.to_i > tempDiffNumber.to_i)
    nowString = tempString
    nowDiffNumber = (753 - nowString.to_i).abs
  end
end
puts nowDiffNumber