str = gets.chomp
index_of_A = str.index("A")
index_of_Z = str.rindex("Z", -1)

puts index_of_Z - index_of_A + 1