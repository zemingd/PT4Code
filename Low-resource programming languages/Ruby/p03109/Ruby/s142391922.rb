s = gets.split("/").map(&:to_i)
if s[1] < 4 || (s[1] == 4 && s[2] <= 30)
    puts "Heisei"
else
    puts "TBD"
end