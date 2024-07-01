a,b,c,d = gets.split.map(&:to_i)
L = a+b
R = c+d
if L > R
    puts "Left"
elsif L < R
    puts "Right"
elsif
    puts "Balanced"
end