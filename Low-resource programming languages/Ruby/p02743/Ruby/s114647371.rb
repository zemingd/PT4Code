a,b,c = gets.split.map(&:to_f)

if a+b+2*((a*b)**(1.0/2))+0.0000000001 < c
    puts "Yes"
else
    puts "No"
end