gets
lines = gets.split.map(&:to_i).sort.reverse

answer = 0
(0..(lines.size - 3)).each{|long_i|
    ((long_i + 1)..(lines.size - 2)).each{|middle_i|
        first_invalid_i = ((middle_i + 1)..(lines.size - 1)).to_a.bsearch{|short_i| lines[long_i] >= lines[middle_i] + lines[short_i]}
        first_invalid_i = lines.size if first_invalid_i == nil
        answer += first_invalid_i - middle_i - 1
    }
}
puts answer
