n = gets.to_i

positions = []


n.times do
    x, y, h = gets.split.map(&:to_i)
    positions << [x, y, h]
end

sample = positions[0]

res_x = res_y = res_h = 0

0.upto(100) do |cx|
    valid = true
    0.upto(100) do |cy|
        ch = [0, sample[2] + (cx - sample[0]).abs + (cy - sample[1]).abs].max

        res_x = cx
        res_y = cy
        res_h = ch

        valid = true


        positions.each do |pos|
            if pos[2] != ch - (cx - pos[0]).abs - (cy - pos[1]).abs
                # puts "#{pos[2]} != #{ch} - #{(cx - pos[0]).abs} - #{(cy - pos[1]).abs}"
                valid = false
            end
        end

        break if valid
    end
    break if valid
end

puts [res_x, res_y, res_h].join(' ')