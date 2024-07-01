require 'pp'

n = gets.chomp!.to_i
points = []
zero_points = []
n.times do |i|
    x, y, h = gets.chomp!.split(' ').map(&:to_i)
    if h == 0
        zero_points << [x, y]
    else
        points << [x, y, h]
    end
end

answers = []
0.upto(100) do |c_x|
    0.upto(100) do |c_y|
        ok = true
        before = nil
        points.each do |x, y, h|
            h_tmp = h + (x - c_x).abs + (y - c_y).abs
            before ||= h_tmp
            if before != h_tmp
                ok = false
                break
            end
        end
            
        if ok
            puts "#{c_x} #{c_y} #{before}"
            exit 0
        end
    end
end
