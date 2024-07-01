L, R = gets.chomp.split(" ").map(&:to_i)
l = L % 2019

if L / 2019 != R / 2019
    puts 0
else
    puts l * (l + 1)
end
