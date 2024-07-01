D = gets.chomp.to_i
T = gets.chomp.to_i
S = gets.chomp.to_i

judge = (D/S).to_f

if judge <= T
    puts "Yes"
elsif judge > T
    puts "No"
end