# Cats and Dogs
A,B,X = gets.chomp.split(" ").map(&:to_i)
if X - A <= B && X >= A
    puts "YES"
else 
    puts "NO"
end