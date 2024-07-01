##A - Harmony
#1行目
n, l =gets.chomp.split(" ").map(&:to_i);

if (n + l)%2 == 0
  print (n + l)/2
else
  print "IMPOSSIBLE"
end