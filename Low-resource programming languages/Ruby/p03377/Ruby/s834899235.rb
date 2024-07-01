a, b, x = gets.split.map(&:to_i)
if a > x
    puts "NO"
else
    if a+x <= a+b
        puts "YES"
    else
        puts "NO"
    end
end