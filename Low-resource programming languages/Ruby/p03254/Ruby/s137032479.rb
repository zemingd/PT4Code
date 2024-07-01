N, x = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i).sort
N.times do |n|
    x = x - ary[n]
    if x > 0
        next
    else
        if x == 0
            puts n + 1
        elsif x < 0
            puts n
        end
        exit 
    end
end
puts x == 0 ? N : N - 1