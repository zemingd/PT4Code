x,a,b = gets.split(" ").map(&:to_i)

syomi = b - a
if syomi < 0
    puts "delicious"
elsif syomi > x
    puts "dangerous"
else 
    puts "safe"
end
    