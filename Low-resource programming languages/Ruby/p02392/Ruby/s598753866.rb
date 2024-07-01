a = gets()
b = a.split
if b[0].to_i < b[1].to_i && b[1].to_i < b[2].to_i
    puts "Yes"
else
    puts "No"
end
