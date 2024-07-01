N = gets.to_i
hen = gets.split(' ').map(&:to_i)
hen.sort!

triangle_total = 0
a = 0

while a < N - 2 do
    b = a + 1

    while b < N - 1 do 
        
        check_num = hen[a] + hen[b]
        
        if check_num <= hen[b + 1]
        elsif check_num > hen[N - 1]
            triangle_total = triangle_total + N - 1 - b
        else
            head = b + 1
            tail = N - 1

            while head <= tail
                center = (head + tail) / 2                
                if check_num >= hen[center] && check_num <= hen[center + 1]
                    triangle_total = triangle_total + center - b
                    break
                elsif check_num > hen[center]
                    head = center + 1
                else
                    tail = center - 1
                end
            end

        end

        b = b + 1

    end
    a = a + 1

end

p triangle_total
