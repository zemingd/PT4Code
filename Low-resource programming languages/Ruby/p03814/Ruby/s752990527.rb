s = gets.split("")
left = s.find_index('A')
right = s.size - s.find_index('Z').reverse + 1

puts left - rig