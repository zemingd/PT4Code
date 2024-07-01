lines = []
while line = gets
    lines << line.chomp.split(' ').map(&:to_i)
end

A = lines[0][0]
V = lines[0][1]
B = lines[1][0]
W = lines[1][1]
T = lines[2][0]

if B < A then
  if A - T * V <= B - T * W then
    print "YES"
  else
    print "NO"
  end
elsif A < B then
  if A + T * V >= B + T * W then
    print "YES"
  else
    print "NO"
  end
else
  print "YES"
end