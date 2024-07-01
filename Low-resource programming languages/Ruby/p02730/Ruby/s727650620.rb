str = gets.chomp.to_s

i = (str.length-1)/2 - 1
j = (str.length+3)/2 - 1
last = str.length-1
if str == str.reverse && 
   str[0..i]  == str[0..i].reverse &&
   str[j..last]  == str[j..last].reverse then
   puts("Yes")
else 
    puts("No")
end
