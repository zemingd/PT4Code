wx, wy, bx, by = [], [], [], []
gets.to_i.times { |i|
    a = gets.chomp
    a.length.times { |j|
        if a[j] == '.'
            wx << i
            wy << j
        else
            bx << i
            by << j
        end
    }
}
max, n = 0, 0
bx.length.times {|i|
    wx.length.times {|j|
        n = (bx[i] - wx[j]).abs + (by[i] - wy[j]).abs
        max = n if max < n
    }
}
puts max