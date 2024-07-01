A,B,X = gets.split(" ").map(&:to_i)
if X > A + B || A > X
   puts "NO"
else
   puts "YES"
end