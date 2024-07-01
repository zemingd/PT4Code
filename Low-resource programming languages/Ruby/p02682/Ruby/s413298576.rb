i = gets.chomp.split(' ').map(&:to_i)
if i[0]>=i[3] then
    puts i[3]
else
    if i[0]+i[1]>=i[3] then
        puts i[0]
    else
        puts i[0]-(i[3]-(i[0]+i[1]))
    end
end