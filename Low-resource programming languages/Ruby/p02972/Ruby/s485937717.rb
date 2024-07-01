n = gets.to_i
a = gets.split.map(&:to_i)

b = []
count = 0
x = Array.new(n)
(n).downto(1) {|i|
    sum = 0
    k = 2 * i
    while k <= n
        sum += a[k - 1]
        k += i
    end
    if sum % 2 == a[i - 1] then
        x[i - 1] = 0
    else
        x[i - 1] = 1
        b.push(i)
        count += 1
    end
}

puts count
puts b.join
