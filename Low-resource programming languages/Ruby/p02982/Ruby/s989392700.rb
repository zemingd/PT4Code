n, d = gets.split.map(&:to_i)

a = Array.new(n).map{Array.new(d)}

for i in 0...n
    a[i] = gets.split.map(&:to_i)
end

ans = 0
for i in 0...n
    for j in i+1...n
        sum = 0
        for k in 0...d
            sum += (a[i][k] - a[j][k]) ** 2 
        end

        rt = Math.sqrt(sum).round.to_i
        if(rt ** 2 == sum)
            ans += 1
        end
    end
end

puts ans