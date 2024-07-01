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

maths = maths.transpose
maths.each do |val|
  puts val.join.to_s
end