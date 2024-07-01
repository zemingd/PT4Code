N = gets.to_i
H = gets.split.map(&:to_i)
max = 0
num = 0
(N-1).times do |i|
    if H[i] >= H[i+1] then
        num += 1
    else
        max = num if max < num
        num = 0
    end
end
max = num if max < num
puts max