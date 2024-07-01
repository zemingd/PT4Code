
gets
a = gets.split(" ").map(&:to_i)

count = 0
a.size.times do |x|
(a.size - 1).times do |i|
    if a[i] > a[i + 1] then
        a[i], a[i + 1] = a[i + 1], a[i]
        count += 1
    end
end
end

print a.join(" "), "\n"
print count, "\n"


