while hws = gets.chomp
    h,w=hws.split(' ').map{|n| n.to_i}
    if h==0 && w==0
        break
    else
        h.times do
            puts "#"*w
        end
        puts ""
    end
end