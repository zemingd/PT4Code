D = gets.chomp.to_i
T = gets.chomp.to_i
S = gets.chomp.to_i

judge = D/S

if judge <= T
    puts "Yes"
    exit
elsif judge > T
    puts "No"
    exit
end
