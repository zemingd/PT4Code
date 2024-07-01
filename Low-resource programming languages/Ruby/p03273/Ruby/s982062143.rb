h,w=gets.chomp.split(" ").map(&:to_i)
maths = []
h.times do
  tempArray = []
  tempArray = gets.chomp.split("")
  maths << tempArray if tempArray.uniq != ["."]
end
sliceIndexes = []
w.times do |wIndex|
  tempArray = []
  maths.length.times do |hIndex|
    tempArray << maths[hIndex][wIndex]
  end
  sliceIndexes << wIndex if tempArray.uniq == ["."]
end
sliceIndexes.sort.reverse.each do |val|
  maths.length.times do |hIndex|
    maths[hIndex].slice!(val)
  end
end
maths.each do |val|
  puts val.join.to_s
end