def zb_xyz(x, y, z)
    [x, y, z].sort[1] == y
end

def zb
    n = gets.chomp.to_i
    arr = gets.chomp.split(/\s/).map{|x| x.to_i}

    cnt = 0
    (n-2).times do |i|
        cnt += 1 if zb_xyz(arr[i], arr[i+1], arr[i+2])
    end

    puts cnt
end

#za
zb
