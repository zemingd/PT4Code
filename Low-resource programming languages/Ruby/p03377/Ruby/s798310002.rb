a, b ,x = gets.chomp.split(" ").map(&:to_i)
if a + b >- x && b <= x
    puts "YES"
else
    puts "NO"
end
