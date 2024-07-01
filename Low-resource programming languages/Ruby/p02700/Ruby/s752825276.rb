a,b,c,d = gets.split.map(&:to_i)

if((a / d) >= (c / b))
    puts 'Yes'
else
    puts 'No'
end