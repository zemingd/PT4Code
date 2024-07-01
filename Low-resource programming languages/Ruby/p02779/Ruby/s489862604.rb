n = gets.to_i
a = gets.chomp.split.map(&:to_i).sort

if ((a.count - a.uniq.count) > 0) then
  print "NO"
else
  print "YES"
end