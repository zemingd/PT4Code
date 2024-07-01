input = readlines()

l1 = input.shift().chomp.to_s.split('')
l2 = input.shift().chomp.to_s.split('')
l3 = input.shift().chomp.to_s.split('')

puts "#{l1[0]}#{l2[1]}#{l3[2]}"