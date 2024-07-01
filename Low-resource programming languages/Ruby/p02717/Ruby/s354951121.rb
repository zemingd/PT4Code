arry = gets.chomp.split(" ").map(&:to_i)
work = arry[0]
arry[0] = arry[1]
arry[1] = work
work = arry[0]
arry[0] = arry[2]
arry[2] = work
puts arry.join(" ")