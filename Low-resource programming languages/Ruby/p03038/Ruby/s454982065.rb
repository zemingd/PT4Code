n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
sum = a.inject(:+)

bc = []
m.times {bc << gets.split.map(&:to_i)}
bc.sort_by!{|b, c| -c}

i = 0
j = 0
k = 1
while a[i] < bc[j][1]
    sum += bc[j][1] - a[i]
    break if (i += 1) >= n

    if k == bc[j][0]
        k = 1
        break if (j += 1) >= m
    else
        k += 1
    end
end

puts sum