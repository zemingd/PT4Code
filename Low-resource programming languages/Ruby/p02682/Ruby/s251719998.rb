imput = gets.chomp.split(" ")
#puts imput
a = imput[0].to_i
b = imput[1].to_i
c = imput[2].to_i
k = imput[3].to_i
#puts a,b,c,k
if (a >= k) then
    puts k
else
    if (a + b >= k) then
        puts a
    else
        puts (a - (k-a-b))
        #puts k
    end
end
  