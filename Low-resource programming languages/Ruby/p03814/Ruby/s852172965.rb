s = gets.chomp.chars
left = s.find_index('A')
right = s.size - s.reverse.find_index('Z') - 1
ans = right - left + 1
puts ans
