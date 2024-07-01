s = gets.chomp.chars
left = s.find_index('A')
right = s.size - s.reverse.find_index('Z')
ans = right - left
puts ans