def bb047
    w,h,n = gets.chomp.split(/\s/).map{|x| x.to_i}

    xr = 0..w
    yr = 0..h

    for i in 1..n
        x,y,a = gets.chomp.split(/\s/).map{|z| z.to_i}
        case a
        when 1 # x < xi
            xr = x..xr.last if x > xr.first
        when 2 # x > xi
            xr = xr.first..x if x < xr.last
        when 3 # y < yi
            yr = y..yr.last if y > yr.first
        when 4 # y > yi
            yr = yr.first..y if y < yr.last
        end
    end

    if (xr.last - xr.first) < 0 or (yr.last - yr.first) < 0
        puts 0
        exit
    end

    puts (xr.last - xr.first) * (yr.last - yr.first)
end

bb047