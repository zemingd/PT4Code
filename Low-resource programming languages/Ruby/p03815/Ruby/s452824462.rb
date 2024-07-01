x = gets.chomp.to_i
if x % 11 > 5
    puts (x/11)*2+2
else
    puts x % 11 == 0 ? (x/11)*2 : (x/11)*2+1
end