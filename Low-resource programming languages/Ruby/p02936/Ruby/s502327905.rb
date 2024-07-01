line = gets.chomp.split(" ").map(&:to_i)
n = line[0]
q = line[1]

parent = Array.new(n, -1)
(n - 1).times do
    line = gets.chomp.split(" ").map(&:to_i)
    a = line[0]
    b = line[1]
    parent[b - 1] = a - 1
end

values = Array.new(n, 0)
q.times do
    line = gets.chomp.split(" ").map(&:to_i)
    values[line[0] - 1] += line[1]
end

ans = ""
for i in 0..(n - 1)
    target = i
    total = values[target]
    target = parent[target]
    while target != -1 do
        if target < i
            total += values[target]
            break
        end
        total += values[target]
        target = parent[target]
    end
    values[i] = total
    ans += "#{total.to_s} "
end

puts ans
