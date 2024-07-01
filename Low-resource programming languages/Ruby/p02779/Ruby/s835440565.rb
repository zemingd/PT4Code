i = gets.to_i
t = gets.split(" ").map(&:to_i)
if (t.count - t.uniq.count) == 0
    puts "YES"
else
    puts "NO"
end
