#n=gets.chomp.split(" ").map(&:to_i);
a,b,c,k=gets.chomp.split(" ").map(&:to_i);
sum = 0

sum += [a,k].min
k-=[a,k].min
k-=[b,k].min
sum -= [b,k].min

puts sum
