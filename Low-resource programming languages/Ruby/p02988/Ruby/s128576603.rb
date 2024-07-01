n = gets.to_i
p = Array.new(n-1)
p = gets.split(" ").map(&:to_i);
count = 0
for i in 1..n-2 do
    if p[i] > p[i-1] && p[i] <= p[i+1]
        count += 1
    else
        if p[i] >= p[i-1] && p[i] < p[i+1]
            count += 1
        else
            if p[i] < p[i-1] && p[i] >= p[i+1]
                count += 1
            else
                if p[i] <= p[i-1] && p[i] > p[i+1]
                    count += 1
                end
            end
        end
    end
end
puts count
