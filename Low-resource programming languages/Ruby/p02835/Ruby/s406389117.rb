A1, A2, A3 = gets.split.map(&:to_f)
i = [A1, A2, A3].sum

 if i >= 22 then
    puts "bust"
 else
    puts "win"
 end
 