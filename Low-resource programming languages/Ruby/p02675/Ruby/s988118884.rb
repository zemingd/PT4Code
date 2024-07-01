n = gets.chomp.split("").map(&:to_i)

if n.size == 3
    if n[2] == 3 then
        puts "bon"
    elsif n[2] == 0 || 1 || 6 || 8 then
        puts "pon"
    else
        puts "hon"
    end
elsif n.size == 2
    if n[1] == 3 then
        puts "bon"
    elsif n[1] == 0 || 1 || 6 || 8 then
        puts "pon"
    else
        puts "hon"
    end
else
    if n[0] == 3 then
        puts "bon"
    elsif n[0] == 0 || 1 || 6 || 8 then
        puts "pon"
    else
        puts "hon"
    end
end