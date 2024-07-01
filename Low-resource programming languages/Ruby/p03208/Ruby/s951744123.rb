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
  for times in 0..arrayOfTrees.size - numOflightedTree do
   arrayOfDiffs << arrayOfTrees[times + numOflightedTree -1] - arrayOfTrees[times]
  end
end

puts arrayOfDiffs.min