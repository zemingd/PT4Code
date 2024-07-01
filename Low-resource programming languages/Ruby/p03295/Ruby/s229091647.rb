N, M = gets.split.map(&:to_i)
ab = []
M.times do |i|
    ab[i] = gets.split.map(&:to_i)
end
ab.sort_by!{|arr| arr[1]}

ans = 0
last = -1
ab.each do |a, b|
    if last <= a
        ans += 1
        last = b
    end
end
puts ans