n = gets.to_i
arr = gets.split.map(&:to_i)

arr2 = arr.sort
arr2.each {|n|
print "#{n} "
}
puts