n,x = gets.split(" ").map(&:to_i)
child = gets.split(" ").map(&:to_i).sort
y = 0
if child.inject(:+) == x
    puts n
else
    for i in 0..n-1 do
        x = x - child[i]
        if (x > 0 && i != n-1)
            y += 1
        elsif x > 0 && i == n-1
            puts y
            break
        elsif x == 0
            puts y + 1
            break
        else
            puts y
            break
        end
    end
end