a = gets.split(" ").map(&:to_i)

if a.max == a[0]+a[1]+a[2] - a.max
    puts "Yes"
else
    puts "No"
end
