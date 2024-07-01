a, b, x = gets.chomp.split(" ").map(&:to_i)
if a > x
    puts "NO"
else
    puts a+b >= x ? "YES" : "NO"
end