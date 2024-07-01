(gets.to_i).times do
    x1,y1,x2,y2,x3,y3,x4,y4=gets.chomp.split(nil).map(&:to_f)
    slope1=(y1-y2)/(x1-x2)
    slope2=(y3-y4)/(x3-x4)
    if slope1==slope2
        puts "YES"
    else
        puts "NO"
    end
end