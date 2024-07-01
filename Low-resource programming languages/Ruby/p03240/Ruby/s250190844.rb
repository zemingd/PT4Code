N = gets.to_i
ary = []
N.times do |i|
    ary << gets.split(" ").map(&:to_i)
end
flag = false

101.times do |i|
    101.times do |j|
        h = 0
        N.times do |k|
            next if ary[k][2] == 0
            tmp = ary[k][2] + (i - ary[k][0]).abs + (j - ary[k][1]).abs
            if h == 0
                h = tmp 
            elsif h != tmp
                break
            end 
            if k == N - 1
                puts [i, j, h].join(" ")
                flag = true
            end
        end
        break if flag == true
    end
    break if flag == true
end
