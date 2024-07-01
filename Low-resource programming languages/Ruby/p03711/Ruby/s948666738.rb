X, Y = gets.chomp.split(" ").map(&:to_i)

A = [1,3,5,7,8,10,12]
B = [4,6,9,11]

puts (A.include?(X) && A.include?(Y)) || (B.include?(X) && B.include?(Y)) ? 'Yes' : 'No'
