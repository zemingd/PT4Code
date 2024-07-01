d, t, s = gets.chomp.split(" ").map(&:to_i)
k = t * s
if d <= k
    puts "Yes"
else
    puts "No"
end