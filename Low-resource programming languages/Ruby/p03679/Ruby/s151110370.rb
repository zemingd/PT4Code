x,a,b = gets.split(" ").map(&:to_i)

syomi = b - a
if 0 >= syomi
    puts "delicious"
elsif syomi > x
    puts "dangerous"
else 
    puts "safe"
end
    