a,b,c = gets.split(" ").map(&:to_i)
if b.between?(a,c) and !(a == b) and !(b == c)
    puts "Yes"
else
    puts "No"
end

