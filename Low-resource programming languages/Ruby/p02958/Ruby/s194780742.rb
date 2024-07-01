require 'matrix'
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

sorted = a.sort
sub = (Vector.elements(sorted) - Vector.elements(a)).to_a

sub_rm = sub.select {|n| n != 0}

if sub_rm.length == 2
  puts("YES")
else
  puts("NO")
end