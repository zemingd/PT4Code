N = gets.to_i
L = gets.split.map(&:to_i)

L.sort!.reverse!

count = 0
done = false
for i in 0..(N-3)
    for j in (i+1)..(N-2)
        for k in (j+1)..(N-1)
            if L[i] < L[j] + L[k]
                count += 1
            else
                done = true
                break
            end
        end
        if done
            done = false
            break
        end
    end
end

puts count