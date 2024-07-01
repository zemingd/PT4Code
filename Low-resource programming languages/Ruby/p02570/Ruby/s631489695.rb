D = gets.chomp.to_i
T = gets.chomp.to_i
S = gets.chomp.to_i

if S == 0
    return nil
elsif (D/S) <= T
    puts "Yes"
elsif (D/S) > T
    puts "No"
end
