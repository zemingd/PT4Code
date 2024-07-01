a,b,c,d=gets.chomp.split(" ").map(&:to_i);
if ((a - b).abs <= d and (b - c).abs  <= d) or ((a - c).abs <= d ) then
  print "Yes"
else
  print "No"
end