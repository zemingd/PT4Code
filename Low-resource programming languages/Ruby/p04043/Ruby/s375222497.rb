b =gets.chomp.split(" ")
b.sort!
if b[0] == '5' && b[1] == '5' && b[2] == '7'
    puts 'YES'
else
    puts 'NO'
end