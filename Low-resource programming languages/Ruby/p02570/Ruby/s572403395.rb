d, t, s = gets.chomp.split(" ").map{|num| num = num.to_i}

if d <= t * s then
  print "YES"
else
  print "NO"
end