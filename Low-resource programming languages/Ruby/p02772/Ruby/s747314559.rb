b=gets
a=gets.chomp.split(" ").map(&:to_i)
a.each do |e|
if e%2==0
if e%3==0 or e%5==0
 else
 print "DENIED"
 exit
end
end
end
print "APPROVED"