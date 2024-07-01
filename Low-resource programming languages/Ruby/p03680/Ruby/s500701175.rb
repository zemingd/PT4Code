n = gets.chomp.to_i
a = []
ans = false
count = 0
i = 1
n.times do
    a << gets.chomp.to_i
end

n.times do
    i = a[i-1]
    count += 1
    if i == 2 then
        ans = true
        break
    end
end

puts ans ? count : -1