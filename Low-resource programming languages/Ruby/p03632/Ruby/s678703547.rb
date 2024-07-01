A,B,C,D = gets.split.map(&:to_i)
X = B-C
Y = D-A
Z = B-A
W = D-C

if B<C || D<A
  puts 0
else
  puts [X,Y,Z,W].min
end