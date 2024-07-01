n = gets.chomp.split(' ').map(&:to_i)
sum = n.inject(0){|sum,num| sum + num}
if  sum<= 21
    puts "win"
else
    puts "bust"
end