n, m, k = gets.split(' ').map(&:to_i)                                                                                                                                     [3/1966]
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
time = 0
i = 0
j = 0
a_top = a[0]
b_top = b[0]
a_flg = true
b_flg = true
sum = 0

while time < k
        sum += 1
        if a_top < b_top and a_flg
                time += a_top
                i += 1
        elsif b_flg
                time += b_top
                j += 1
        end

        if time + a_top > k and time + b_top > k
                if sum == 1
                        sum = 0
                end
                break
        end

        if i >= a.length
                a_flg = false
        else
                a_top = a[i]
        end
        if j >= b.length
                b_flg = false
        else
                b_top = b[j]
        end
end
puts sum