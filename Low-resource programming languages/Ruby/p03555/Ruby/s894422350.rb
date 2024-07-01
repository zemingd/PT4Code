input = readlines()

l1 = input.shift.chomp.to_s
l2 = input.shift.chomp.to_s

puts l1 == l2.reverse ? 'YES' : 'NO'