a,b,c=gets.split.map(&:to_i)
v=(a**0.5).to_i+(b**0.5).to_i-(c**0.5).to_i
if v>=0
    puts "No"
else
 puts "Yes"
 end