input = gets.chomp.split
a = input[0].to_f
b = input[1].to_f
c = input[2].to_f

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