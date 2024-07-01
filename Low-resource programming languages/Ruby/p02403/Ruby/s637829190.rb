a = gets.split.map(&:to_i).sort
until a[0] == 0 && a[1] == 0 do
 for i in 1..a[0] do
  for j in 1..a[1] do
   print "#"
  end
  print "\n"
 end
 a = gets.split.map(&:to_i).sort
end