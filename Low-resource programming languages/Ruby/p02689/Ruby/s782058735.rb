n, m = gets.chomp.split(" ").map(&:to_i)
h = gets.chomp.split(" ").map(&:to_i)
root = Array.new(n).map{Array.new}
ans = 0
m.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    root[a-1] << b
    root[b-1] << a
end

root.each_with_index do |arr, idx|
    if arr.empty? then
        ans += 1
        next
    end
    flag = true
    arr.uniq.each do |j|
        flag = false if h[idx] <= h[j-1]
    end
    if flag then
        ans += 1
    end
end

puts ans