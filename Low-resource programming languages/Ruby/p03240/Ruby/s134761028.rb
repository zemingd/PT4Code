N = gets.to_i
ary = []
si = -1
N.times do |i|
    ary << gets.split(" ").map(&:to_i)
    si = i if ary[i][2] != 0
end
flag = false

101.times do |i|
    101.times do |j|
        h = ary[si][2] + (i - ary[si][0]).abs + (j - ary[si][1]).abs
        N.times do |k|
            break if ary[k][2] == 0 && h > (i - ary[k][0]).abs + (j - ary[k][1]).abs
            break if ary[k][2] != 0 && h - ary[k][2] != (i - ary[k][0]).abs + (j - ary[k][1]).abs
            if k == N - 1
                puts [i, j, h].join(" ")
                flag = true
            end
        end
        break if flag == true
    end
    break if flag == true
end



