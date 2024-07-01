# Your code here!

A, B, C, D = gets.chomp.split(" ").map(&:to_i)

if A + B > C + D
    puts 'Left'
elsif A + B < C + D
    puts 'Right'
else
    puts 'Balanced'
end