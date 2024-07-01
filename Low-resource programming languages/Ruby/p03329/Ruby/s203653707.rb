ary = [1, 2, 3, 4, 5]
max = 10 ** 5

i = 6
while i < max
    ary << i
    i *= 6
end

i = 9
while i < max
    ary << i
    i *= 9
end

ary.sort_by!{|e| -e}

n = gets.to_i
ans = 0
ary.each do |e|
    if e <= n
        x, n = n.divmod(e)
        ans += x
        p [e, n, x, e * x + n]
    end
end

puts ans