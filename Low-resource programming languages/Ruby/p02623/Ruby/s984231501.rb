N, M , K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
time = 0
count = 0
a_i = 0
b_i = 0

while time < K
    s = a[a_i]
    t = b[b_i]
    break if s == nil and t == nil   

    if s == nil or t == nil
        if s
            time += s
            a_i += 1
        else
            time += t
            b_i += 1
        end
    else
        if s < t
            time += s
            a_i += 1
        else
            time += t
            b_i += 1
        end 
    end
    count += 1 if time <= K
end

puts count