h,w=gets.chomp.split(" ").map(&:to_i)
maths = []
h.times do
  tempArray = []
  tempArray = gets.chomp.split("")
  maths << tempArray if tempArray.uniq != ["."]
end

maths = maths.transpose
(0..(maths.length-1)).sort.reverse.each do |index|
  maths.slice!(index) if maths[index].uniq == ["."]
end

puts maths.transpose.map(&:join)