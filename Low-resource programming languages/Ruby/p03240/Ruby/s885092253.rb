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
        valid = true

        positions.each do |cpos|
            ch = [0, cpos[2] + (cx - cpos[0]).abs + (cy - cpos[1]).abs].max
            valid = true

            res_x = cx
            res_y = cy
            res_h = ch
            positions.each do |pos|
                if pos[2] != [0, ch - (cx - pos[0]).abs - (cy - pos[1]).abs].max
                    valid = false
                    break
                end
            end
            break if valid
        end

        break if valid
    end
    break if valid
end

puts [res_x, res_y, res_h].join(' ')