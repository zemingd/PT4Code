firstLineInput = gets.to_s
numOfTree = firstLineInput.split(" ")[0].to_i
numOflightedTree = firstLineInput.split(" ")[1].to_i

arrayOfTrees = []
for times in 1.. numOfTree do
  arrayOfTrees<<gets.to_i
end

arrayOfTrees.sort!
arrayOfDiffs = []

for times in 0..arrayOfTrees.size - numOflightedTree do
  arrayOfThreeTrees = []  
  for times2 in 0..numOflightedTree-1 do
   arrayOfThreeTrees << arrayOfTrees[times + times2]
  end
  arrayOfDiffs << arrayOfThreeTrees.max - arrayOfThreeTrees.min
end

puts arrayOfDiffs.min