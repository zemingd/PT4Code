# Your code here!

A, B, X = gets.chomp.split(" ").map(&:to_i)
sum = A + B

if sum < X
    puts "NO"
elsif A > X
    puts "NO"
else
    puts "YES"
end