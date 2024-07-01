a,b = gets.split.map(&:to_i)
puts (a*b==1||a*b==3)? "Yes":"No"