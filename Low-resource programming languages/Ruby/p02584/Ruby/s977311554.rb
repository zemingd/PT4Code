x,k,d = gets.split.map(&:to_i)

for i in k..1 do
    if (x - d).abs <= x then
        x = x - d
    else
        x = x + d
    end
end
puts x.abs