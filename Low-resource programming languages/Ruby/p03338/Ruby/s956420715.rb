n=gets.to_i
s=gets.chomp
maxCount = 0
(1..(n-1)).each do |index|
  xIndex = index
  xString = s.slice(0,xIndex).split("").uniq
  yString = s.slice(xIndex,s.length-xIndex).split("").uniq
  tempMaxCount = 0
  xString.each do |x|
  	tempMaxCount += 1 if yString.include?(x)
  end
  maxCount = tempMaxCount if tempMaxCount > maxCount
end
puts maxCount