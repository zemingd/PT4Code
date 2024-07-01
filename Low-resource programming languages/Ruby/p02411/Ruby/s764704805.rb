while true
        input = STDIN.gets.split(' ')

        m = input[0].to_i
        f = input[1].to_i
        r = input[2].to_i

        break if m == -1 && f == -1 && r == -1

        grade = ''
        if m == -1 || f == -1 then
                grade = 'F'
        elsif (m + f) >= 80 then
                grade = 'A'
        elsif (m + f) >= 65 then
                grade = 'B'
        elsif (m + f) >= 50 then
                grade = 'C'
        elsif (m + f) >= 30 then
                grade = 'C' if r >= 50
                grade = 'D' if r < 50
        else
                grade = 'F'
        end
        puts grade
end