n=gets.to_i
b = n;
a = 0;
while b > 0 do
    a += b % 10;
    b /= 10;
end
if n % a == 0
    puts "Yes"
else
    puts "No"
end

        

