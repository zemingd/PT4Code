n = gets.chomp.to_i
xn, yn, hn = [], [], []
si = -1
n.times do |i|
    xn[i], yn[i], hn[i] = gets.chomp.split(" ").map(&:to_i)
    si = i if hn[i] > 0
end

(100+1).times do |x|
    (100+1).times do |y|
        h = hn[si] + (x - xn[si]).abs + (y - yn[si]).abs
        flag = true
        n.times do |i|
            flag = false if hn[i] > 0 && h - hn[i] != (x - xn[i]).abs + (y - yn[i]).abs
            flag = false if hn[i] == 0 && h > (x - xn[i]).abs + (y - yn[i]).abs
        end
        if flag
            puts [x, y, h].join(' ')
            exit
        end
    end
end