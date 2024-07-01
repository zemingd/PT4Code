l1 = gets.chomp.split(" ").map(&:to_i);
l2 = gets.chomp.split(" ").map(&:to_i);
l3 = gets.chomp.split(" ").map(&:to_i);

flatten = l1.concat(l2).concat(l3)

n =  gets.chomp.to_i
n.times do
  b =  gets.chomp.to_i
  flatten[flatten.index(b)] =true if flatten.include?(b)
end

l1=flatten[0..2]
l2=flatten[3..5]
l3=flatten[6..8]

pp l1
pp l2
pp l3

if (l1[0] == l2[0] && l2[0] == l3[0]) ||
   (l1[1] == l2[1] && l2[1] == l3[1]) ||
   (l1[2] == l2[2] && l2[2] == l3[2]) ||
   (l1[0] == l1[1] && l1[1] == l1[2]) ||
   (l2[0] == l2[1] && l2[1] == l2[2]) ||
   (l3[0] == l3[1] && l3[1] == l3[2]) ||
   (l1[0] == l2[1] && l2[1] == l3[2]) ||
   (l1[2] == l2[1] && l2[1] == l3[0])
puts "Yes"
else
puts "No"
end