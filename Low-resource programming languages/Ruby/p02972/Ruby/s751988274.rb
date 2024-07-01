N = gets.to_i
a = gets.split(" ").map(&:to_i)
count = 0

Box = Array.new(N)
N.downto(1) do |i|
    if i % 2 == 0
        if a[i - 1] == 1
            Box[i - 1] = 1
            N.times do |j|
                if (j + 1) / 2 == 0
                    a[j] = (a[j] + 1) % 2
                end
            end
            count += 1
        else
            Box[i - 1] = 0
        end
    else # i % 2 == 1
        if a[i - 1] == 1
            Box[i - 1] = 1
            a.map do |x|
                x = (x + 1) % 2
            end
            if i > 1
                count += 1
            end
        else
            Box[i - 1] = 0
        end
    end
end

if count % 2 == 0
    if Box.count(1) > 0
        ans = []
        puts Box.count(1)
        Box.each_with_index do |x, i|
            if x == 1
                ans << i + 1
            end
        end
        puts ans.join(" ")
    else
        puts 0
    end
else 
    puts -1
end
