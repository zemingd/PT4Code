a,b,x = gets.split(" ").map(&:to_i)

if  (a+b) >= x
    puts "YES" 
else
    puts "NO"
end