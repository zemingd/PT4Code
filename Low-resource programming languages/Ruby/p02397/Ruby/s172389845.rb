a,b = (gets.chomp.split.map &:to_i).sort
while a != 0 || b != 0 do
  print a," ",b,"\n"
  a,b = gets.chomp.split.map &:to_i
end