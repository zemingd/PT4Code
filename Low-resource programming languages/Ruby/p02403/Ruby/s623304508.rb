loop do
    h,w = gets.split(" ").map do |i| i.to_i end
    if h + w == 0 then
        break
    else
        (1..h).each do |high|
            puts "#"*w
        end
        puts ""
    end
end