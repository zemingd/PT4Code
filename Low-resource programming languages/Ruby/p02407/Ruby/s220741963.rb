N=gets.to_i
list=gets.chomp.split(" ").map(&:to_i)
print list.reverse!.join(' ')
print "\n"
