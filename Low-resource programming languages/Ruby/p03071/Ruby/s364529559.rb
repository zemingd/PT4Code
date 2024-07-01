input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
if a == b
    p 2 * a
else
    p 2 * [a,b].max - 1
end