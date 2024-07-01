# Your code here!

X, A, B = gets.chomp.split(" ").map(&:to_i)
if A - B >= 0
    puts "delicious"
elsif B - A <= X
    puts "safe"
else
    puts "dangerous"
end