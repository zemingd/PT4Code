a = gets.to_i.modulo(10)
if [2,4,5,7,9].include?(a)
  print "hon"
elsif [0,1,6,8].include?(a)
  print "pon"
else
  print "bon"
end