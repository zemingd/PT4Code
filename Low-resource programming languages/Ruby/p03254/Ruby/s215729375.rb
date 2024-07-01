N, X = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

x = X
count = 0

A.sort.each_with_index do |a, i|
    if i == A.size - 1
        if a == x
            count += 1
        end
    else
        if x >= a
            count += 1
            x -= a
        end
    end
end

puts count