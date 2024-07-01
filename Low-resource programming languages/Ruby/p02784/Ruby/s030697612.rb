#s = gets.chomp
#n = gets.chomp.to_i
h, n = gets.chomp.split(" ").map{|i|i = i.to_i}
a = gets.chomp.split(" ").map{|i|i = i.to_i}
sum = 0
a.each do |a_i|
  sum += a_i
end


if(sum >= h)
  puts "Yes"
else 
  puts "No"
end