r, g, b = gets.split.map{|i| i.to_i}
if (r*100+g*10+b)%4==0 then
    puts 'YES'
else
    puts 'NO'
end
