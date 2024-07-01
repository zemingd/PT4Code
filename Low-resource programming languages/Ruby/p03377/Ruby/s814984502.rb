a, b, x = gets.split.map(&:to_i)
if a > x
    puts "No"
else
    if a+x <= a+b
        puts "Yes"
    else
        puts "No"
    end
end