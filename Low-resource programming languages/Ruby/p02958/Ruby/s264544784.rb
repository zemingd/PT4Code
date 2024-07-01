def dist(arr)
    brr = arr.sort
    cnt = 0
    arr.each_with_index do |x, idx|
        cnt += 1 unless arr[idx] == brr[idx]
    end
    return cnt
end


def bb
    n = gets.chomp.to_i#.map{|x| x.to_i}
    nn = gets.chomp.split(/\s/).map{|x| x.to_i}

    if dist(nn) <= 2
        puts 'YES'
    else
        puts 'NO'
    end
end

bb
