def bubble_sort(a)
    n = a.length
    c = 0
    for i in 0..n-1
        (n-1).downto(i+1) do |j|
            if a[j] < a[j-1]
                tmp    = a[j]
                a[j]   = a[j-1]
                a[j-1] = tmp
                c += 1
            end
        end
    end
    return a, c
end
gets
a = gets.strip.split(" ").map{|i| i.to_i}
res = bubble_sort(a)
puts res[0].join(" ")
puts res[1]
