a, b, c = gets.chomp.split(" ").map(&:to_i)
if a + b == c || a + c == b || a == b + c
    puts "Yes"
else
    puts "No"
end