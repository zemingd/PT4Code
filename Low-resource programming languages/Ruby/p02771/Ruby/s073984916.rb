a,b,c=gets.chomp.split(" ").map(&:to_i)
if a==b and a==c 
print "NO"
elsif a!=b and a!=c and b!=c
print "NO"
else
print "YES"
end