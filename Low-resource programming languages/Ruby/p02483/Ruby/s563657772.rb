#sorting three numbers
#presentation error

input = gets.chomp.split(" ")
input[0] = input[0].to_i
input[1] = input[1].to_i
input[2] = input[2].to_i

input.sort!

for i in 0...input.length do
 if i > 0 then print ' ' end
 print input[i]
end