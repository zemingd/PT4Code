a, b, c, d = gets.split(" ").map(&:to_i)
k = [a,c].max
j = [b,d].min
if b<c
    puts 0
else
puts j-k
end