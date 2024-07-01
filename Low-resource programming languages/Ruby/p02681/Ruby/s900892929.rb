str_s = gets.chomp
str_t = gets.chomp

if str_s == str_t.slice(0,str_t.length-1) then puts "Yes"
else puts "No"
end
