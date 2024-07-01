input = gets.chomp.split("")
A = input[0].to_i
B = input[1].to_i

S = gets.chomp


if S.chars[A] == "-"
    puts "Yes"
else
    puts "No"
end