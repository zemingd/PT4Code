a,b,c,d,e =  gets.strip.split(" ").map do |i|
  i.to_i
end
if a == 0
  print 1
elsif b == 0
  print 2
elsif c == 0
  print 3
elsif d == 0
  print 4
elsif e== 0
  print 5
end