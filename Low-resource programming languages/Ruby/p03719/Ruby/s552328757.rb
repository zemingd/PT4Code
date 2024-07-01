# Your code here!

A, B, C =  gets.chomp.split(" ").map(&:to_i)
if C >= A  && C <= B
    puts "Yes"
else
    puts "No"
end