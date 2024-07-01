input = gets.chomp.split
a = input[0].to_i
b = input[1].to_i
c = input[2].to_i

left = (a ** 2 + b ** 2 + c ** 2) - 2 * (a * b + a * c - b * c)
right = 4 * a * b
c_a_b = c - a - b >= 0 ? true : false

if c_a_b
    if left > right
        puts "Yes"
    else
        puts "No"
    end
else
    if left < right
        puts "Yes"
    else
        puts "No"
    end
end