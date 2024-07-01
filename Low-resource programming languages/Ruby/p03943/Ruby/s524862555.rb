a,b,c=gets.chomp.split(" ").map(&:to_i)
m=[a,b,c].max
if (a+b+c-m)==m
    puts "Yes"
else
    puts "No"
end