x,y = gets.split.map{|num|num.to_i}
g1 = [1,3,5,7,8,10,12]
g2 = [4,5,9,11]
g3 = [2]
if g1.include?(x) && g1.include?(y)
    puts "Yes"
elsif g2.include?(x) && g2.include?(y)
    puts "Yes"
elsif g3.include?(x) && g3.include?(y)
    puts "Yes"
else
    puts "No"
end