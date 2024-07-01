n = gets.to_i
s = gets.chomp
if n % 2 == 0 and s[0,n/2] == s[n/2,n/2]
    puts "Yes"    
else
    puts "No"
end