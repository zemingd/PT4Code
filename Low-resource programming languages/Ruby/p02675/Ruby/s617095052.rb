n = gets.to_i
case n.to_s[-1]
when '3'
    puts "bon"
when '0', '1', '6', '8'
    puts "pon"
else
    puts "hon"
end
