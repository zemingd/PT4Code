list = gets.chomp.split(" ").map(&:to_i)
list.sort!.reverse!


puts list[0]*10 + list[1] + list[2]
