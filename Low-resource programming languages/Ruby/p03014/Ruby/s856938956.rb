h, w = gets.split.map(&:to_i)
s = h.times.map{gets.chomp}
max_light = 0
h.times do |i|
    0.upto(s[i].length - 1) do |j|
        light = 0
        next if s[i][j] == '#'
        light += 1
        j_loop = j-1
        while j_loop >= 0
            if s[i][j_loop] == '.'
                light += 1
                j_loop -= 1
            else
                break;
            end
        end
        j_loop = j+1
        while j_loop < s[i].length
            if s[i][j_loop] == '.'
                light += 1
                j_loop += 1
            else
                break;
            end
        end
        i_loop = i-1
        while i_loop >= 0
            if s[i_loop][j] == '.'
                light += 1
                i_loop -= 1
            else
                break;
            end
        end
        i_loop = i+1
        while i_loop < h
            if s[i_loop][j] == '.'
                light += 1
                i_loop += 1
            else
                break
            end
        end
        max_light = light if max_light < light
    end
end
puts max_light