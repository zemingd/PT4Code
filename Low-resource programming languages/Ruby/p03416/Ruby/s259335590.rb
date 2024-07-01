a,b=gets.chomp.split(" ").map(&:to_i)
count=0
(a..b).each do |number|
  numberArray = number.to_s.split("")
  leftNumbers = numberArray.slice(0,2)
  rightNumbers = numberArray.slice(3,2)
  rightNumbers = [rightNumbers[1],rightNumbers[0]]
  count +=1 if leftNumbers.join.to_s == rightNumbers.join.to_s
end
puts count