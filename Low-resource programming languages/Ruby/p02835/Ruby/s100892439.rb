a1, a2, a3 = gets.split.map(&:to_i)
i = [a1, a2, a3].sum

 if i >= 22 then
    puts "bust"
 else
    puts "win"
 end
