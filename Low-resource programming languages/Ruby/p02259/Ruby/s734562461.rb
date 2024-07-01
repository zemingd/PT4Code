def bubblesort(a)
    swapcount = 0
    flag = true
    while flag do
        flag = false
        (a.size-1).downto(1){|j|
            a[j], a[j-1], flag, swapcount = a[j-1], a[j], true, swapcount+1 if a[j]<a[j-1]
        }
    end
    return swapcount
end

gets
a = gets.split.map(&:to_i)
ct = bubblesort a
puts a.join(' '), ct
