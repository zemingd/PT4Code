while (x,y = gets.split(" ").map(&:to_i)) != [0,0] do
    if x > y then
        k = x
        x = y
        y = k
    end
    puts [x, y].join(" ")
end

