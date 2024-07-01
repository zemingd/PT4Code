D,T,S = gets.chomp.split.map(&:to_i)
if (D/S) <= T
    puts "Yes"
elsif (D/S) > T
    puts "No"
end