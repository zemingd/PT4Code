str = gets.split
A,B = str[0].to_i, str[1].to_i
C = A+B
if C%2 == 0
    puts C/2
else
    puts "IMPOSSIBLE"
end