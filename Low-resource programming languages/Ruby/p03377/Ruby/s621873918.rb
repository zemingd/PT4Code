a,b,x = gets.split(" ").map(&:to_i)

if x >= a
    if  (a+b) >= x
        puts "YES" if x >= a
    else
        puts "NO"
    end
else
    puts "NO"
end