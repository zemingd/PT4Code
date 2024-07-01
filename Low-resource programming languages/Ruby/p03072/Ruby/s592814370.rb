n = gets
h = gets.chomp.split.map(&:to_i)
height = 0
cnt = 0
4.times do |hoge|
    if height <= h[hoge] then
        cnt += 1
        height = h[hoge]
    end
end
puts cnt
