a,b = gets.chomp.split(" ").map(&:to_i)
k = a+b
if k.odd? 
    puts "IMPOSSIBLE"
else
    puts k/2
end