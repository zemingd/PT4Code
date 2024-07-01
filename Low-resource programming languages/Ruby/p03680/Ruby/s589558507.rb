n = gets.to_i
a = Array.new(n)
n.times do |i|
    a[i] = gets.to_i
end
flag = Array.new(n,false)
current = 1
c = 0

while true
    if current == 2
        puts c
        break
    end
    if flag[current-1]
        puts -1
        break
    else
        flag[current-1] = true
    end
    current = a[current-1]
    c += 1
end