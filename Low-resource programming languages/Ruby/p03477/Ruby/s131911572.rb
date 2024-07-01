a,b,c,d = gets.chomp.split.map(&:to_i)
if a+b > c+d
    print("Left")
elsif a+b < c+d
    print("Right")
else
    print("Balanced")
end 