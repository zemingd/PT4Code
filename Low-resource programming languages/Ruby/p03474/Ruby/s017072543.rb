A,B = gets.split.map(&:to_i)
str = gets.chomp.split('-')
if str[0]&.size == A && str[1]&.size == B && str&.size == 2
  print "Yes"
else
  print "No"
end