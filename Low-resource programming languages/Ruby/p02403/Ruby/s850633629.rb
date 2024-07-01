while true do
    h, w = gets.split.map(&:to_i)
    break if h == 0 && w == 0
    for i in 1..h do
        w.times do
            print "#"
        end
        puts ""
    end
        puts ""
end