N = gets.to_i
a = gets.strip.split.map(&:to_i)
answer = 0
for i in 0..N-1

    while a[i] % 2 == 0

        a[i] /= 2
        answer += 1

    end

end

puts answer 

