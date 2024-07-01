x,a,b = gets.split.map(&:to_i)
if a >= b then
    puts 'delicious'
else
    y = b - a
    if y >= x+1 then
        puts 'dangerous'
    else
        puts 'safe'
    end
end