L, R = gets.chomp.split(" ").map(&:to_i)
l = L % 2019

if (L..R).to_a.map{|a| a %= 2019}.include?(0)
    puts 0
else
    puts l * (l + 1)
end