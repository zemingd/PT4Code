gets
H = gets.split.map(&:to_i)
ans = 0
acc = 0
prev = H[0]
H[1..-1].each do |h|
    if h <= prev
        acc += 1
        ans = [acc, ans].max
    else
        acc = 0
    end
    prev = h
end
p ans