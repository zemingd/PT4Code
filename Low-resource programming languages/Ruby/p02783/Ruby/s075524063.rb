#s = gets.chomp
#n = gets.chomp.to_i
h,a = gets.chomp.split(" ").map{|i|i = i.to_i}
if h%a == 0 then
  puts h/a
else 
  puts 1+(h/a)
end