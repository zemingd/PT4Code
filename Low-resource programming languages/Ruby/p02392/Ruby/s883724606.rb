a,b,c = gets.chomp.split(' ').map{|x| x.to_i}

if a<b && b<c

puts "Yes"

else

puts "No"

end