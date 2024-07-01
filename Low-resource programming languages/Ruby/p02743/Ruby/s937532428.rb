input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

left = (c - a - b) ** 2
right = 4 * a * b
c_a_b = c - a - b > 0 ? true : false

if c_a_b && left > right
    puts "Yes"
else
    puts "No"
end

# if c_a_b
#     if left > right
#         puts "Yes"
#     else
#         puts "No"
#     end
# else
#     if left < right
#         puts "Yes"
#     else
#         puts "No"
#     end
# end