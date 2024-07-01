a,b,c = gets.split(' ').map(&:to_i)

# a<=c<=b

if a <= c && c <= b
    puts "Yes"
else
    puts "No"
end