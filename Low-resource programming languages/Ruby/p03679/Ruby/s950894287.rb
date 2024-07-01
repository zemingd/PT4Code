x,a,b = gets.split.map{|n|n.to_i}
if b > a
    puts b - a <= x ? "safe" : "dangerous"
else
    puts "delicious"
end