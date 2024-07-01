a,b = gets.split.map &:to_i
a,b = b,a  if a>b
puts [a]*b*''