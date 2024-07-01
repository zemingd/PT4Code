a,b,c,d = gets.split.map(&:to_i)
if d >= b-a && d >= c-b || d>=c-a
    puts "Yes"
else
    puts "No"
end