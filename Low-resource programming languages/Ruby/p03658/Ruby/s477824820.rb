inputAllNumber,inputChoiceNumber = gets.chomp.split(" ").map(&:to_i)
inputNumber = gets.chomp.split(" ").map(&:to_i)

sortedNumber = inputNumber.sort {|a, b| b <=> a }
answer = 0

inputChoiceNumber.times do | i |
  answer += sortedNumber[i]
end

print answer
