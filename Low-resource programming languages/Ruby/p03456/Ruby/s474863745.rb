a,b = gets.chomp.split(" ")
s = (a + b).to_i
x = (s ** 0.5).floor

if s == x * x
    puts "Yes"
else
    puts "No"
end 
