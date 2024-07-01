a,b = gets.chomp.split(" ").map(&:to_i)
mini = [a,b].min
big = [a,b].max
big.times  {|i| print mini}
print "\n"
