input = gets
arr = input.split
sum = 0
arr.each{|num|
  sum += num.to_i
}
print sum > 21 ? 'bust' : 'win'