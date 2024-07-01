#sorting three numbers
#

input = gets.chomp.split(" ")
input[0] = input[0].to_i
input[1] = input[1].to_i
input[2] = input[2].to_i

input = input.sort

i = 0
while i < 3
 print(input[i])
 if i < 2 then print " " end
 i+=1
end