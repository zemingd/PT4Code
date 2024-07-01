a,b,c,d = gets.split.map(&:to_i) 

if((a + b) > (c + d))
    puts 'Yes'
else
    puts 'No'
end