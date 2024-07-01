n = gets.chomp.to_i
c = gets.chomp.split('')
e = Array.new; e.fill(0, 0..n)
w = Array.new; w.fill(0, 0..n)
1.upto(n - 1) do |i|
        w[i] = w[i - 1]
        if c[i - 1] == 'W' then w[i] += 1 end
end
(n - 2).downto(0) do |i|
        e[i] = e[i + 1]
        if c[i + 1] == 'E' then e[i] += 1 end
end
min = n
n.times do |i|
        if min > e[i] + w[i] then min = e[i] + w[i] end
end
puts min