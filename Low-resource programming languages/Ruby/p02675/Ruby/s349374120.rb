n = gets.chomp.split("").map(&:to_i)
if n[2] == 3 then
    puts "bon"
elsif n[2] == 0 || n[2] == 1 || n[2] == 6 ||  n[2] == 8 then
    puts "pon"
else
    puts "hon"
end