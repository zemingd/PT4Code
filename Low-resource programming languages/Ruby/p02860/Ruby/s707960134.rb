n = gets.to_i
s = gets.chomp!

if(n % 2 == 1 || s[0,n/2] != s[n/2,n/2])
    puts "No"
else
    puts "Yes"
end