a,b,c,d = gets.split.map(&:to_i)
if d >= (b-a).asb && d >= (c-b).asb || d >= (c-a).asb
    puts "Yes"
else
    puts "No"
end