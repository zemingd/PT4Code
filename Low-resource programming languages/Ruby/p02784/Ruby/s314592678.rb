hp,a=gets.chomp.split(" ").map(&:to_i);
al=gets.chomp.split(" ").map(&:to_i);
sum=0
al.each do |i|
  sum += i
end
if sum>=hp
  print "Yes"
else
  print "No"
end