A,B = gets.split.map(&:to_i)
str = gets.chomp.split('-')
print str[0]&.size == A && str[1]&.size == B && str&.size == 2 ? 'Yes' : 'No'