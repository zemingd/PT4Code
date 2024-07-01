h,n=gets.chomp.split(" ").map(&:to_i);
a = gets.chomp.split(" ").map(&:to_i);

atk = a.sum
if h <= atk
  print "Yes"
  exit
else
  print "No"
  exit
end
