lines = gets.chomp.chars
lines2 = gets.chomp.chars
#print lines[2]
#print lines2
if(lines[0]==lines2[2] && lines[1]==lines2[1] && lines[2]==lines2[0]) then
    puts "YES"
else
    puts "NO"
end