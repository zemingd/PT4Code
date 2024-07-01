n = gets.to_i
s = gets.to_s

length = n / 2
a = s.slice(0,length)
if s == a + a
    puts "Yes"
else
    puts "No"
end