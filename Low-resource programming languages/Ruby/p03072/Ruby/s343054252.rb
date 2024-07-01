n = gets.to_i
hs = gets.split(" ").map(&:to_i)
count = 0
n.times do |i|
    arr = hs[0..i-1]
    arr_max = arr.max
    if arr_max <= hs[i] or i == 0
        count += 1
    end
end
puts count
