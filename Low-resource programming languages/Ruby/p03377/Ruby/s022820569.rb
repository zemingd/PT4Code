a, b ,x = gets.chomp.split(" ").map(&:to_i)
if a + b >= x && a <= x
    puts "YES"
else
    puts "NO"
end
