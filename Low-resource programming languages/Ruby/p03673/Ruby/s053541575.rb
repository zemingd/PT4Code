n = gets.to_i
a = gets.strip.split.map(&:to_i)
answer = []

if n % 2 == 0

    for i in 0..n-1

        if i % 2 == 0

            answer[(n / 2) + (i / 2)] = a[i]

        else

            answer[(n / 2) - (i / 2) - 1] = a[i]

        end

    end

else

    for i in 0..n-1

        if i % 2 == 0

            answer[(n / 2) - (i / 2)] = a[i]

        else

            answer[(n / 2) + (i / 2) + 1] = a[i]

        end

    end

end

puts answer.join(' ')

