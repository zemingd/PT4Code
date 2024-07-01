str = gets.split
H,N = str[0].to_i, str[1].to_i
a = 0
str = gets.split
for i in 0...N do
    a += str[i].to_i
end
if H <= a
    puts "Yes"
else
    puts "No"
end