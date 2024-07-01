a,b,x = gets.chomp.split.map(&:to_i)

if (a + b) >= x && x <= a
    puts "Yes"
else
    puts "No"
end
    
