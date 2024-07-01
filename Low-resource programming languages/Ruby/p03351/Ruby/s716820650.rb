input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i
d = input[3].to_i

if (a - c).abs <= d || ((a - b).abs <= d && (b - c).abs <= d)
    puts "Yes"
else
    puts "No"
end