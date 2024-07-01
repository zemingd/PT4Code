xi = gets.chomp.split(" ").map!{|item| item.to_i}
p = gets.chomp.split(" ").map!{|item| item.to_i}
p.sort!
if xi[1] == 0
    puts xi[0]
    exit
end

y = p.max
for i in 0..p.max do
    if y > (xi[0]-i).abs
        if p.include?(i)
        else
        y = (xi[0]-i).abs
        a = i
        end
    end
end
puts a

    
