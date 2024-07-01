while true do
    y = 0
    x = gets.split(" ").map(&:to_i)
    
    if(x == 0) then
        break
    end
    y = y + 1
    print "Case ", y, ": ", x
end