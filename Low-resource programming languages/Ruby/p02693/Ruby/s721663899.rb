k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
 
(a..b).each do |i|
 
 if i % k == 0 
     puts "OK"
     break
else
    puts "NG"
end