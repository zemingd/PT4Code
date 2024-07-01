x = gets.to_i

x.downto(1) do |i|
    2.upto(i) do |j|
        if i % j == 0
            y = i
            cnt = 0
            while y % j == 0
                y /= j
                cnt += 1
            end
            if y == 1 && cnt > 1
                puts i
                exit
            end
        end
    end
end