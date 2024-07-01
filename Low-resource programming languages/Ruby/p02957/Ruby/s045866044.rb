a,b = gets.split.map(&:to_i)
k = (a+b)/2
if (k-a).abs == (b-k).abs
    puts k
else
    puts "IMPOSSIBLE"
end