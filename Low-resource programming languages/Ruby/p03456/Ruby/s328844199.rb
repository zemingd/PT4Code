a,b = gets.split(" ")
c = (a.to_i + b.to_i)/2

if (a+b).to_i == c**2
    puts "Yes"
else
    puts "No"
end
