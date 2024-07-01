a = gets.chomp.split("/").map(&:to_i)

 if a[0] < 2019 then
   print "Heisei"
 elsif a[0] == 2019 && a[1] <= 4 then
   print "Heisei"
 else
   print "TBD"
 end
