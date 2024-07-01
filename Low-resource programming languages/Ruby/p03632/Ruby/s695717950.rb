a,b,c,d = gets.split.map(&:to_i)

if b <= c
    puts 0
elsif b >= d 
    puts d - c
else
    puts b - c
end