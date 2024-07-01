line = readlines.map{ |s| s.chomp }
#["10", "ZABCDBABCQ"]
string = line[1]

number = string.scan("ABC").length

puts number