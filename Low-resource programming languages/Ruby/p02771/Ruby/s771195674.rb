a,b,c=gets.chomp.split(" ").map(&:to_i)
if a==b and a==c
print "No"
elsif a!=b and a!=c and b!=c
print "No"
else
print "Yes"
end  