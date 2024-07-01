n, m, k = gets.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
time = 0
a_top = a.shift
b_top = b.shift
sum = 0

while k > 0
        sum += 1
        if a_top < b_top
                k -= a_top
                a_top = a.shift
        else
                k -= b_top
                b_top = b.shift
        end
        if not a_top
                while k > 0
                        sum += 1
                        k -= b_top
                        b_top = b.shift
                end
                break
        end
        if not b_top
                while k > 0
                        sum += 1
                        k -= a_top
                        a_top = a.shift
                end
                break
        end
end
if k < 0
        sum -= 1
end
puts sum