d,t,s=gets.chomp.split(" ").map(&:to_i);
if t*s>=1000
print "Yes"
else
print "No"
end