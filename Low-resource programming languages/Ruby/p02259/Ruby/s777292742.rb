def bubble(n, a)
    flag = true
    c = 0
    while flag do
        flag = false
        0.upto(n-2) do |i|
            (a[i], a[i+1], c, flag = a[i+1], a[i], c+1, true) if a[i] > a[i+1]
        end
    end
    puts a.join(" "), c
end
bubble(gets.to_i, gets.split.map(&:to_i))