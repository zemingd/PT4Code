a,b,c=gets.chomp.split(&:to_i)
if a+b==c 
    puts "Yes"
    exit
else
    if a+c==b
        puts "Yes"
        exit
    else
        if b+c==a
            puts "Yes"
            exit
        end
    end
end
puts "No"