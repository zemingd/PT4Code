#require 'pp'

n = gets.chomp!.to_i
points = []
n.times do |i|
    x, y, h = gets.chomp!.split(' ').map(&:to_i)
    points << [x, y, h]
end

0.upto(100) do |c_x|
    0.upto(100) do |c_y|
        ok = true
        before = nil
        n.times do |i|
            x, y, h = points[i]
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