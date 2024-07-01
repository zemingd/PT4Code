firstLineInput = gets.to_s
numOfTree = firstLineInput.split(" ")[0].to_i
numOflightedTree = firstLineInput.split(" ")[1].to_i

arrayOfTrees = []
for times in 1.. numOfTree do
  arrayOfTrees<<gets.to_i
end

arrayOfTrees.sort!
arrayOfDiffs = []


for times in 0..arrayOfTrees.size-3 do
  arrayOfThreeTrees = []
  arrayOfThreeTrees << arrayOfTrees[times]
  arrayOfThreeTrees << arrayOfTrees[times+1]
  arrayOfThreeTrees << arrayOfTrees[times+2]
  arrayOfDiffs << arrayOfThreeTrees.max - arrayOfTrees.min
end


puts arrayOfDiffs.min