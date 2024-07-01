y, m, d = gets.split("/").map(&:to_i)

if y > 2019 || (y == 2019 && m > 5)
    puts "TBD"
else
    puts "Heisei"
end
