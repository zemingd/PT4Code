X = gets.to_i
flag = false
c = X % 5
i = 1
while i <= X do
    if X % i == 0 && i % 5 == c
        a = 0
        loop do
            break if flag == true
            a5 = a**5
            b5 = (a - i)**5
            if a5 - b5 == X
                puts [a, a - i].join(" ")
                flag = true
            elsif a5 + b5 == X
                puts [a, i - a].join(" ")
                flag = true
            end
            a += 1
            flag = true if a5 + b5 > X && a5 - b5 > X
        end
    end
    break if flag == true
    i += 1
end